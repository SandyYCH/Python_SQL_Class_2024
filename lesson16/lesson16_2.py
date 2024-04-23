import streamlit as st

st.title("Session_state 和 Callback")

col1, buf, col2 = st.columns([2, 1, 2])

#on_change執行回調函式(執行回調函式後，重新由上而下執行所有程式)，因此回調函式必須在指令on_change上方
def lbs_to_kg():
    st.session_state.kg = st.session_state.lbs / 2.2046

def kg_to_lbs():
    st.session_state.lbs = st.session_state.kg * 2.2046

#利用Callback邏輯，Button不用傳出值也可運行
with col1:
    st.number_input("磅:", key = "lbs", on_change = lbs_to_kg)    #on_change = lbs_to_kg：登記/註冊回調函式

with col2:
    st.number_input("公斤:", key = "kg", on_change = kg_to_lbs)