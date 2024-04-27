#方法1
import streamlit as st

if 'count' not in st.session_state:
    st.session_state['count'] = 0

st.title("計數器的範例")

increment = st.button("增加計數器的值",key="mybutton")
if increment:
    st.session_state['count'] += 1

st.write("計數器:",st.session_state['count'])


#方法2：以.count取代['count'] (以.count取代subscript)
import streamlit as st

if 'count' not in st.session_state:
    st.session_state.count = 0

st.title("計數器的範例")

increment = st.button("增加計數器的值",key="mybutton")
if increment:
    st.session_state.count += 1

st.write("計數器:",st.session_state.count)



