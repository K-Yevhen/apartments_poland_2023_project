# importing libraries for future analysis
import streamlit as st
import pandas as pd
import plotly.express as px

# loading data to work with
apartments_krakow = pd.read_csv("apartments_krakow_6month_final.csv")

# checking if data loaded right
print(apartments_krakow.head())

# filtering data
min_price = st.sidebar.slider(
    "Minimum Price in Krakow 2024 (PLN)",
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

# dropping missing value (esp. in buildYear column) and sorting by buildYear
apartments_krakow_v1 = apartments_krakow.dropna(subset=["buildYear", "price"])
apartments_krakow_v1 = apartments_krakow_v1.sort_values(by="buildYear")

# Grouping and calculating data
average_price_by_year = apartments_krakow_v1.groupby("buildYear", as_index=False)["price"].mean()

# Smoothing data using a rolling average, window = size of year
average_price_by_year["smoothed_price"] = average_price_by_year["price"].rolling(window=5, min_periods=1).mean()

# building Plotly Line Chart
fig = px.line(
    average_price_by_year,
    x="buildYear",
    y="smoothed_price",
    title="Trend of Average Price Over Build Year",
    labels={"buildYear": "Build Year", "smoothed_price": "Average Price (PLN)"},
    line_shape="linear",
    template="plotly_dark",
)

# Displaying the chart
st.markdown("#### Relationship Between Build Year and Average Price")
st.plotly_chart(fig)

# Describing short explanation about difference by min and max buildYear
st.markdown("""
### Summary of Findings
The chart shows that **older buildings** in Krakow tend to be **more expensive**.
This is because they are often located **closer to the city center** and are known
as **"Kamienice"** in Polish. These historic buildings are valued for their **prime locations**,
**classic architecture**, and cultural significance, which makes them highly desirable despite their age.
""")
