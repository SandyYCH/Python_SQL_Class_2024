import streamlit as st

#建立預設/初始化的session_state的key 
if 'a1' not in st.session_state:
    st.session_state['a1'] = 100

if 'a2' not in st.session_state:
    st.session_state['a2'] = 200

if 'a3' not in st.session_state:
    st.session_state['a3'] = 300

#命令不會重複被執行。若字典已建立，則命令不會再被執行一次
if 'a1' not in st.session_state:
    st.session_state['a1'] = 500

st.write(st.session_state)