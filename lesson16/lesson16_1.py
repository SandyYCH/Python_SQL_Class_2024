import streamlit as st

st.title("Session_state 基礎")
#st.write(st.session_state)

#使用Input widgets - st.slider
number:int = st.slider("數值", min_value=1, max_value=10, value=5, key="mySlider")  #儲存在session_state裡的key名稱=mySlider
#st.write("加入slider後的session_state",st.session_state)

#建立radio後即不能修改，將欲「修改radio」語法移至「建立radio」語法上方
#若要移動next button至上方，須將語法移至「col1, buff, col2 = st.columns([1, 0.5, 3])」上方
next = st.button("下一個選項")
if next:
    if st.session_state.radio_option == "a":
        st.session_state.radio_option = "b"
    elif st.session_state.radio_option == "b":
        st.session_state.radio_option = "c"
    else:
        st.session_state.radio_option = "a"

#建立欄位Layouts and containers - st.columns
col1, buff, col2 = st.columns([1, 0.5, 3])

with col1:        #使用Input widgets - st.radio
    option_names = ["a", "b", "c"]
    option = st.radio("請選擇1個", option_names, key = "radio_option" )  #a為預設值
    #st.write("加入radio後的session_state", st.session_state)

with col2:
    if option == "a":
        st.write("您選擇的是'a' :smile:")
    elif option == "b":
        st.write("您選擇的是'b' :heart:")
    elif option == "c":
        st.write("您選擇的是'c' :rocket:")

