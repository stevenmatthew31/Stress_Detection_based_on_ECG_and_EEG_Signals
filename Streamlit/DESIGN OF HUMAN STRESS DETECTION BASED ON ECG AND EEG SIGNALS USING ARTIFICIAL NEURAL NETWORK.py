import streamlit as st
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
from stqdm import stqdm
from PIL import Image
from ecg import ecg, time_domain, non_linear, frequency_domain
from eeg import calculate_freq_domain

def eeg_filter(y_input):
    temp_lpf = []
    temp_hpf = []
    for j in stqdm(range(len(y_input)), 'Calculate Low Pass Filter and High Pass Filter'):
        if (j <= 1):
            temp_lpf.append(0.0350849*y_input[j])
        elif (j == 2):
            temp_lpf.append(0.0350849*y_input[j]+0.0701698*y_input[j-1]+(1.404706*temp_lpf[j-1]))
        else:
            temp_lpf.append(0.0350849*y_input[j]+0.0701698*y_input[j-1]+0.0350849*y_input[j-2]+(1.404706*temp_lpf[j-1]) - 0.54504561*temp_lpf[j-2])

        if (j <= 1):
            temp_hpf.append(0.99136003*temp_lpf[j])
        elif (j == 2):
            temp_hpf.append(0.99136003*temp_lpf[j]-(1.98272007*temp_lpf[j-1])+1.98264542*temp_hpf[j-1])
        else:
            temp_hpf.append(0.99136003*temp_lpf[j]-(1.98272007*temp_lpf[j-1])+0.99136003*temp_lpf[j-2]+(1.98264542*temp_hpf[j-1]) - 0.98279472*temp_hpf[j-2])
    return temp_lpf, temp_hpf

def main():
    image = Image.open("C:\\Users\\Ferdinand\\OneDrive - Institut Teknologi Sepuluh Nopember\\1_DATA\\Streamlit\\gui.png")
    st.image(image, width=150)
    st.title("DESIGN OF HUMAN STRESS DETECTION BASED ON ECG AND EEG SIGNALS USING ARTIFICIAL NEURAL NETWORK")

    menu = ["Home","ECG","EEG","About"]
    choice = st.sidebar.selectbox("Menu",menu)
    
    if choice == "Home":
        st.header("Home")
        st.subheader("Uploading Files")
        files = st.file_uploader("Choose a file for processing and features extraction", type=["txt", "csv"])
        if files is not None:
            st.write(type(files))
            file_details = {"filename":files.name, "filetype":files.type,"filesize":files.size}
            st.write(file_details)
        
            data = pd.read_csv(files, names = ['ECG & EEG'])
            data_np = np.array(data)
            if "y" not in st.session_state and "fp1" not in st.session_state and "f3" not in st.session_state:
                st.session_state.y = []
                st.session_state.fp1 = []
                st.session_state.f3 = []
            for row in data_np:
                try:
                    initial = row[0][0]
                    value = float(row[0][1:])
                    if "y" in st.session_state and "fp1" in st.session_state and "f3" in st.session_state:
                        if initial == 'a':
                            st.session_state.y.append(value)
                        elif initial == 'b':
                            st.session_state.fp1.append(value)
                        elif initial == 'c':
                            st.session_state.f3.append(value)
                except ValueError:
                    st.write("error on line",row)

            ndata_ecg = len(st.session_state.y)
            ndata_fp1 = len(st.session_state.fp1)
            ndata_f3 = len(st.session_state.f3)

            st.header("Data Exploration")
            st.subheader('ECG Data')
            if "data_ecg" not in st.session_state:
                st.session_state.data_ecg = pd.DataFrame()
            st.session_state.data_ecg['Elapsed Time'] = (np.arange(ndata_ecg)) * (1 / 250)
            st.session_state.data_ecg['Data ECG'] = st.session_state.y
            st.dataframe(st.session_state.data_ecg.head())

            st.subheader('EEG Fp1 Data')
            if "data_eeg_fp1" not in st.session_state:
                st.session_state.data_eeg_fp1 = pd.DataFrame()
            st.session_state.data_eeg_fp1["Elapsed Time"] = (np.arange(ndata_fp1)) * (1 / 512)
            st.session_state.data_eeg_fp1['EEG Fp1'] = st.session_state.fp1
            st.dataframe(st.session_state.data_eeg_fp1.head())

            st.subheader('EEG F3 Data')
            if "data_eeg_f3" not in st.session_state:
                st.session_state.data_eeg_f3 = pd.DataFrame()
            st.session_state.data_eeg_f3["Elapsed Time"] = (np.arange(ndata_f3)) * (1 / 512)
            st.session_state.data_eeg_f3['EEG F3'] = st.session_state.f3
            st.dataframe(st.session_state.data_eeg_f3.head())

    elif choice == "ECG":
        st.header("Features Extractions ECG")
        st.subheader('Plot ECG Signals')
        st.subheader('Raw ECG Morphology')
        if "data_ecg" in st.session_state and "Elapsed Time" in st.session_state.data_ecg:
            fig = plt.figure()
            plt.plot(st.session_state.data_ecg["Elapsed Time"][:2000], st.session_state.data_ecg['Data ECG'][:2000])
            plt.title("ECG SIGNAL")
            plt.xlabel("Elapsed time(s)")
            plt.ylabel("Amplitude(V)")
            st.pyplot(fig)

        if "y" in st.session_state and "qrs_result" not in st.session_state and "temp_rr" not in st.session_state:
            x, st.session_state.temp_rr, st.session_state.qrs_result = ecg.ecg(st.session_state.y, 100, 100, 100)

        st.subheader('DWT : R Peak Detected')
        if "data_ecg" in st.session_state and "Elapsed Time" in st.session_state.data_ecg and "qrs_result" in st.session_state:
            fig = plt.figure()
            plt.plot(st.session_state.data_ecg["Elapsed Time"][0:2000], st.session_state.qrs_result[0:2000], 'orange')
            plt.title("R Peak Detected")
            plt.xlabel("Elapsed time(s)")
            plt.ylabel("Amplitude(V)")
            st.pyplot(fig)

        submenu = st.sidebar.selectbox("SubMenu",["Time Domain Analysis", "Frequency Domain Analysis", "Non Linear Analysis"])
        
        if submenu == "Time Domain Analysis":
            st.subheader(choice + " " + submenu)
            if "temp_rr" in st.session_state:
                value_rmssd = time_domain.rmssd(st.session_state.temp_rr)
                value_sdann = time_domain.sdann(st.session_state.temp_rr)
                value_nn50, value_pnn50 = time_domain.nn50(st.session_state.temp_rr)

                st.write(f"Time Domain (ECG)")
                st.write(f"RMSSD : {value_rmssd}")
                st.write(f"SDANN : {value_sdann}")
                st.write(f"NN50 & pNN50 : {value_nn50} {value_pnn50}")

        elif submenu == "Frequency Domain Analysis":
            st.subheader(choice + " " + submenu)
            if "temp_rr" in st.session_state:
                window = len(st.session_state.temp_rr)
                window_function = frequency_domain.hanning_new(st.session_state.temp_rr)
                vlf_power, lf_power, hf_power, total_power, freq, power = frequency_domain.welch(st.session_state.temp_rr, window_function, 2**12)

                st.write(f"Frequency Domain (ECG)")
                st.write(f"LF/HF : {lf_power/hf_power}")
                st.write(f"Total Power : {total_power}")

        elif submenu == "Non Linear Analysis":
            st.subheader(choice + " " + submenu)
            if "temp_rr" in st.session_state:
                value_sd1 = non_linear.sd1(st.session_state.temp_rr)
                value_sd2 = non_linear.sd2(st.session_state.temp_rr)

                st.write(f"Non Linear Analysis (ECG)")
                st.write(f"SD1 : {value_sd1}") 
                st.write(f"SD2 : {value_sd2}")
            
    elif choice == "EEG":
        submenu = st.sidebar.selectbox("SubMenu",["Fp1", "F3"])
        if submenu == "Fp1":
            st.header(choice + " " + submenu + " Frequency Domain Analysis")
            st.subheader('Plot EEG ' + submenu + ' Signals')
            st.subheader('Raw EEG Fp1 Morphology')
            if "data_eeg_fp1" in st.session_state and "Elapsed Time" in st.session_state.data_eeg_fp1:
                fig = plt.figure()
                plt.plot(st.session_state.data_eeg_fp1["Elapsed Time"][:2000], st.session_state.fp1[:2000])
                plt.title("EEG Fp1 SIGNAL")
                plt.xlabel("Elapsed time(s)")
                plt.ylabel("Amplitude(V)")
                st.pyplot(fig)

            if "fp1" in st.session_state and "lpf_fp1" not in st.session_state and "hpf_fp1" not in st.session_state:
                st.session_state.lpf_fp1, st.session_state.hpf_fp1 = eeg_filter(st.session_state.fp1)
            
            st.subheader('LPF EEG Fp1')
            if "data_eeg_fp1" in st.session_state and "Elapsed Time" in st.session_state.data_ecg and "lpf_fp1" in st.session_state:
                fig = plt.figure()
                plt.plot(st.session_state.data_eeg_fp1["Elapsed Time"][:2000], st.session_state.lpf_fp1[:2000])
                plt.title("EEG Fp1 SIGNAL AFTER LPF")
                plt.xlabel("Elapsed time(s)")
                plt.ylabel("Amplitude(V)")
                st.pyplot(fig)

            st.subheader('HPF EEG Fp1')
            if "data_eeg_fp1" in st.session_state and "Elapsed Time" in st.session_state.data_ecg and "hpf_fp1" in st.session_state:
                fig = plt.figure()
                plt.plot(st.session_state.data_eeg_fp1["Elapsed Time"][:2000], st.session_state.hpf_fp1[:2000])
                plt.title("EEG Fp1 SIGNAL AFTER HPF")
                plt.xlabel("Elapsed time(s)")
                plt.ylabel("Amplitude(V)")
                st.pyplot(fig)
            
            if "hpf_fp1" in st.session_state:
                d_power_fp1, t_power_fp1, a_power_fp1,b_power_fp1, g_power_fp1, total_power_fp1, freq_fp1, power_fp1 = calculate_freq_domain.calculate_band(st.session_state.hpf_fp1)
                mpf_fp1 = calculate_freq_domain.mpf(freq_fp1, power_fp1)

                st.write(f"Frequency Domain (Fp1)")
                st.write(f"LAPFp1 = {a_power_fp1/total_power_fp1}")
                st.write(f"MPF Fp1 : {mpf_fp1}")

        elif submenu == "F3":
            st.subheader(choice + " " + submenu + " Frequency Domain Analysis")
            st.subheader('Plot EEG ' + submenu + ' Signals')
            st.subheader('Raw EEG F3 Morphology')
            if "data_eeg_f3" in st.session_state and "Elapsed Time" in st.session_state.data_eeg_f3:
                fig = plt.figure()
                plt.plot(st.session_state.data_eeg_f3["Elapsed Time"][:2000], st.session_state.f3[:2000])
                plt.title("EEG F3 SIGNAL")
                plt.xlabel("Elapsed time(s)")
                plt.ylabel("Amplitude(V)")
                st.pyplot(fig)

            if "f3" in st.session_state and "lpf_f3" not in st.session_state and "hpf_f3" not in st.session_state:
                st.session_state.lpf_f3, st.session_state.hpf_f3 = eeg_filter(st.session_state.f3)
            
            st.subheader('LPF EEG F3')
            if "data_eeg_f3" in st.session_state and "Elapsed Time" in st.session_state.data_ecg and "lpf_f3" in st.session_state:
                fig = plt.figure()
                plt.plot(st.session_state.data_eeg_f3["Elapsed Time"][:2000], st.session_state.lpf_f3[:2000])
                plt.title("EEG F3 SIGNAL AFTER LPF")
                plt.xlabel("Elapsed time(s)")
                plt.ylabel("Amplitude(V)")
                st.pyplot(fig)

            st.subheader('HPF EEG F3')
            if "data_eeg_f3" in st.session_state and "Elapsed Time" in st.session_state.data_ecg and "hpf_f3" in st.session_state:
                fig = plt.figure()
                plt.plot(st.session_state.data_eeg_f3["Elapsed Time"][:2000], st.session_state.hpf_f3[:2000])
                plt.title("EEG F3 SIGNAL AFTER HPF")
                plt.xlabel("Elapsed time(s)")
                plt.ylabel("Amplitude(V)")
                st.pyplot(fig)

            if "hpf_f3" in st.session_state:
                d_power_f3, t_power_f3, a_power_f3,b_power_f3, g_power_f3, total_power_f3, freq_f3, power_f3 = calculate_freq_domain.calculate_band(st.session_state.hpf_f3)
                mpf_f3 = calculate_freq_domain.mpf(freq_f3, power_f3)

                st.write(f"Frequency Domain (F3)")
                st.write(f"LAPF3 = {a_power_f3/total_power_f3}")
                st.write(f"MPF F3 : {mpf_f3}")

    elif choice == "About":
        st.subheader("About")
        st.text("Trying to deploy streamlit as GUI for Final Project by Steven Matthew Gondowijoyo")

if __name__ == '__main__':
    main()
