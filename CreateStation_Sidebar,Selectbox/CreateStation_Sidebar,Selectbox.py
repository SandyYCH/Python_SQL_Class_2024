import streamlit as st
from dotenv import load_dotenv
import psycopg2
import os
load_dotenv()

@st.cache_resource
def get_station_names() -> list:
    with psycopg2.connect(os.environ['POSTGRE_PASSWORD']) as conn:
        with conn.cursor() as cursor:
            sql='''
                SELECT * FROM public.stations
                ORDER BY "編號" ASC
            '''
            cursor.execute(sql)
            datas:list = cursor.fetchall()
            names = []
            for item in datas:
                names.append(item[1])
            return names

source_data:list[dict] = get_station_names()

with st.sidebar:
    st.subheader("站點名稱")
    option = st.selectbox("請輸入站點名稱:",get_station_names())
    st.write("You selected:", option)

    