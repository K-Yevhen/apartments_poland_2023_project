# Apartment Prices in Krakow, Poland 2024

An interactive analysis and dashboard exploring apartment
price trends across Poland in 2024 using Python, Streamlit, R and SQL.

------------------------------------------------

## Project Layout

The basic layout of a application is as simple as:
```
apartments_poland_2024_project
├── data/
│   ├── processed/
│   ├── raw/
│   └── README.md
├── notebooks/
│   ├── Apartments_Krakow_2024.html
│   ├── Apartments_Krakow_2024.Rmd
│   └── README.md
├── r_visuals/
│   ├── apartments_room_visual.png
│   ├── apartments_room_visual.R
│   ├── distribution_apartments.R
│   ├── distribution_apartments.png
│   ├── README.md
│   ├── squareMeters_price_relationship.png
│   ├── summary_statistics.png
│   └── summary_statistics.png
├── scripts/
│   ├── apartments.py
│   ├── apartments_krakow_6month_final.csv
│   ├── README.md
│   └── trend_price_over_build_year.png
├── sql/
│   ├── apartments_krakow_6months.sql
│   ├── duplicates.sql
│   ├── README.md
│   └── without_duplicates.sql
├── tableau/
│   └──README.md
├── .gitattributes
├── LICENSE
├── README.md
└── requirements.txt
└── .gitignore
```

------------------------------------------------

## How to Use

1. Clone the repository:
- git clone https://github.com/K-Yevhen/apartments_poland_2024_project.git

2. Install dependencies:
- pip install -r requirements.txt

3. Run the Streamlit app:
- streamlit run scripts/apartments.py

------------------------------------------------

## Graphs and Visuals:
____________________________________________________________
![squareMeters_price_relationship.png](r_visuals%2FsquareMeters_price_relationship.png)
____________________________________________________________
![trend_price_over_build_year.png](scripts%2Ftrend_price_over_build_year.png)
____________________________________________________________
![apartments_room_visual.png](r_visuals%2Fapartments_room_visual.png)
____________________________________________________________
![distrubution_apartment_prices_krakow.png](r_visuals%2Fdistrubution_apartment_prices_krakow.png)
____________________________________________________________
![summary_statistics.png](r_visuals%2Fsummary_statistics.png)

### Data Attribution

This project uses data from [Apartment Prices in Poland by Krzysztof Jamroz](https://www.kaggle.com/datasets/krzysztofjamroz/apartment-prices-in-poland)
available on Kaggle under the [CC BY 4.0 License](https://creativecommons.org/licenses/by/4.0/). 

Note: This project is intended for non-commercial use only.
