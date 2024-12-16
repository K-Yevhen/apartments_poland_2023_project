# importing libraries for future analysis

import streamlit as st
import pandas as pd
import matplotlib.pyplot as plt

# loading data to work with
apartments_krakow = pd.read_csv("apartments_krakow_6month_final.csv")

# checking if data loaded right
print(apartments_krakow.head())

# filtering data
min_price = st.sidebar.slider(
    "Minimum Price (PLN)",
    min_value=int(apartments_krakow['price'].min()),
    max_value=int(apartments_krakow['price'].max()),
    value=int(apartments_krakow['price'].min()),
    step=10000
)

filtered_apartments = apartments_krakow[apartments_krakow['price'] >= min_price]
columns_to_display = ['city', 'buildYear', 'squareMeters', 'rooms', 'price', 'price_per_square_meter']
filtered_apartments_display = filtered_apartments[columns_to_display]

# Describing titles by Streamlit
st.title("Apartments in Krakow")
st.markdown(f'### Showing apartments with prices above **{min_price:,} PLN**')
st.markdown("---")

# Displaying filtered data
st.dataframe(filtered_apartments_display.sort_values(by='price', ascending=True))

# Adding short summary statistics
st.markdown("### **Summary Statistics**")
st.markdown(
    f"""
    - **Total Apartments:** {len(filtered_apartments)}
    - **Average Price:** {filtered_apartments['price'].mean():,.2f} PLN
    - **Average Price Per Square Meter:** {filtered_apartments['price_per_square_meter'].mean():,.2f} PLN
    - **Average Size:** {filtered_apartments['squareMeters'].mean():,.2f} m²
    - **Average Rooms in Apartment :** {int(filtered_apartments['rooms'].mean())} 
    - **Oldest Build Year:** {int(filtered_apartments['buildYear'].min())} Year
    - **Newest Build Year:** {int(filtered_apartments['buildYear'].max())} Year
    """
)

