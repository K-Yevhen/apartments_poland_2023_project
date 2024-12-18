## Scripts Folder

This folder contains the main scripts for the **Apartments in Krakow**
project, including Python scripts for data analysis and a
Streamlit-based interactive dashboard.

### Contents
- `apartments.py`: The main Python script for the Streamlit application. It allows users to explore data visualizations and interact with the apartment dataset.
- `apartments_krakow_6month_final.csv`: The processed dataset used in the Streamlit app.
- `trend_price_over_build_year.png`: A visualization generated during the analysis phase.

------------------------------------------------------

### Streamlit Dashboard

The Streamlit application provides an interactive way to explore the apartment dataset. It includes features such as filtering data, viewing summary statistics, and visualizing trends.

### Key Features
1. **Filter Apartments by Price**: Adjust the minimum price slider to explore apartments above a certain price range.
2**Visualizations**:
   - Line charts for trends in price over build years.
------------------------------------------------------

### How to Run the Streamlit App
#### Prerequisites

1. Install Python 3.9 or later.
2. Clone the repository:
    ```bash 
   git clone https://github.com/K-Yevhen/apartments_poland_2024_project.git
3. Install the required dependencies listed in the `requirements.txt` file:
    ```bash
      pip install -r requirements.txt
4. Navigate to the **scripts** folder:
    ```bash
      cd scripts
5. Run the Streamlit app:
    ```bash
   streamlit run scripts/apartments.py
6. Open the link provided by Streamlit in your web browser.