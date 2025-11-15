# CPI Canada Price Trends & Affordability Analysis
Seasonality • Price Trap Index • Paycheck Pain • Python • SQL • Power BI

![](Image.jpeg)

---

# 📖 Project Story — Why This Analysis Matters
<p align="justify"> Canadian households feel inflation long before it shows up in formal economic reports.
Grocery bills rise quietly… gas discounts vanish as quickly as they appear… and wages struggle to keep up.
This project was born from one question: </p>

_“How much does it really cost to live in Canada — and when is the right time to buy?”_

<p align="justify"> Using the Consumer Price Index (CPI) from January–November, I explored seasonal price behavior, temporary discount traps, and the true affordability of everyday essentials.
The result is a data-driven guide for shoppers, policymakers, and analysts — backed by Python, SQL, and Power BI. </p>

# 🎯 Project Objectives
- ✔️ Seasonality — Best Month To Buy
- Find out when products (like gasoline, fruits, meats, etc.) are cheapest or most expensive.
- ✔️ Trap Index — The “Fake Discount” Detector
- Identify price drops that rebound quickly — short-lived promotions designed to trick shoppers.
- ✔️ Paycheck Pain — Real Impact of Inflation
- Translate CPI inflation into hours of work required at the average Nova Scotia wage.
- ✔️ SQL Data Modeling & Power BI Visualization
Organize cleaned CPI results into analytical tables and build a dashboard that generates clear insights.

# 📊 Data Source
Government of Canada Consumer Price Index (CPI) [_Access_Data_source_](https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=1810000403&utm_source=chatgpt.com) 
Monthly price indexes for goods and services (January–November dataset)

**Main Columns Used:**
- _REF_DATE_
- _Products and product groups_
- _VALUE_

# 🧹 1. Data Preparation & Cleaning (Python)
## Raw CPI data was cleaned using Python (pandas):
- Renamed columns for consistency
- Converted REF_DATE into datetime
- Extracted Month, Year, MonthName
- Removed metadata columns (DGUID, UOM_ID, etc.)
- Exported cleaned dataset → cpi_cleaned.csv
![](1.jpg) 

# 📈 2. Analytical Computations (Python)
## 🟦 A. Seasonality — Best Month to Buy
A new dataset cpi_seasonality.csv identifies:
- Product:	Food/product category
- Month_Cheapest:	Month with lowest CPI
- avg_value_Cheapest:	CPI value at cheapest point
- Month_Expensive:	Month with highest CPI
- avg_value_Expensive:	CPI value at peak
![](2.jpg)

## Interpretation:
- Lower CPI → cheaper than usual
- Higher CPI → inflated or overpriced

# 🟧 B. Trap Index — Detecting Fake Discounts
## Dataset: cpi_trap_index.csv
- Product:	Item with a discount trap
- Dip_Month:	Month when price dropped
- Rebound_Month:	Month it jumped back up
- Dip_Pct:	Discount size
- Rebound_Pct:	Rebound size
![](3.jpg)

**Example Insight:**
- Gasoline dropped –4.4% in December but rebounded +4% by February; This means December’s “discount” was temporary — not a real deal.

# 🟨 C. Paycheck Pain — Hours Needed to Afford Essentials
**Dataset: cpi_paycheck_pain.csv**
- price_proxy	Price level (100 = baseline January)
- hours_needed	Hours of work required
![](4.jpg)

## Interpretation:
- January: 3.35 hours needed
- May: 3.42 hours needed
- A subtle but important increase — inflation is slowly eroding wages.
_You can access the Python File_ [here](https://github.com/0lait0n/CPI-Canada-Price-Trends-Affordability-Analysis/blob/main/PYTHON_CPI_ANALYSIS.ipynb)

# 🗄️ 3. SQL Analysis
After processing with Python, cleaned datasets were stored in SQL and analyzed further.
![](SQL.jpg)
Three core SQL tables:
- Seasonality Summary
- Trap Index
- Paycheck Pain Affordability
## SQL made it easy to:
- compare cheapest months across multiple categories
- detect month-to-month rebound spikes
- analyze affordability trends across the year
- prepare Power BI sources
_You can access the Queries File_ [here](https://github.com/0lait0n/CPI-Canada-Price-Trends-Affordability-Analysis/blob/main/CPI_Queries.sql)

# 🚦 4. Power BI Dashboard — CPI Canada 2025 Insights
***<p align="justify"> Created an interactive dashboard and performed exploratory analysis of CPI category dynamics from 2023-2025. Key work included KPI/dashboard design, monthly trend analysis, identification of top contributors to headline CPI (Gasoline, Energy, Alcoholic beverages, Food, Shelter), and recommendations for deeper decomposition and forecasting. The insights highlight energy and food as primary inflation drivers and recommend targeted investigations and forecasting to support policy and business decisions.***
</p>

![](Dashboard_2.jpg)

***<p align="justify"> This analysis uses CPI (Consumer Price Index) level and product-category data to identify where inflationary pressure is strongest in Canada during 2023-2025. Key high-level findings from the dashboard:***
</P>

- Total CPI (Jan–Sep 2025): 80.92K (dashboard aggregate value)
- Most expensive average value: 2.48K (highest category mean shown)
- Cheapest average value: 2.40K (lowest category mean shown)
- The narrow gap between most-expensive and cheapest average values suggests most categories are clustered in a similar range with a few outliers driving larger changes
- Top five most expensive product categories (by value): - Gasoline — 229, Energy — 206, Alcoholic beverages, tobacco & recreational cannabis — 197, Food — 191, and Shelter — 182 respectively.

***<p align="justify">These indicators show energy-related products (Gasoline, Energy) and discretionary/regulated goods (alcoholic beverages, tobacco) are the largest contributors to the CPI level in the observed period.***
</p>

## 📊 Key analytical insights
- Energy is the dominant short-term driver. Gasoline and Energy are the top two categories by value. Price volatility in these categories (particularly gasoline) contributes disproportionately to monthly CPI movements.
- Food inflation is persistent and steady. The Food trend line increases consistently; this suggests structural or supply-driven pressures rather than a single-month shock.
- Concentration of high values in discretionary/regulated goods. Alcoholic beverages and tobacco appear as a top contributor, with an identifiable spike early in the year; this may reflect tax, supply, or demand seasonality.
- Limited dispersion across category averages. The most expensive and cheapest averages are numerically close, implying that while individual categories spike, the bulk of categories remain within a tight band.
- Seasonality and shocks visible. The stacked time series reveals seasonal dynamics and a notable drop in one major contributor in April 2025; worth investigating.

_You can access the interactive Dashboard_ [here](https://github.com/0lait0n/CPI-Canada-Price-Trends-Affordability-Analysis/blob/main/CPI_Dashboard2.pbix)

# 🧰 Tools & Technologies
- Python (Pandas, NumPy):	Data cleaning & analysis
- SQL (MySQL):	Table creation & querying
- Power BI:	Visualization & dashboarding

# ⭐ Final Summary
<p align="justify"> 
This analysis addressed the challenge of understanding where inflationary pressures were concentrated within Canada’s 2025 Consumer Price Index. By breaking down monthly category movements and comparing the most expensive and least expensive product groups, the dashboard helped reveal how specific categories—particularly Gasoline, Energy, Food, and Alcoholic Beverages—were driving overall trends. The data clearly showed persistent food inflation, significant volatility in energy-related prices, and early-year spikes in regulated goods, all of which shaped the overall CPI trajectory from January to September 2025. </p>
<p align="justify"> The insights from this work provide practical value for both economic monitoring and decision-making. The analysis highlights which categories have the greatest impact on household costs, enabling policymakers, businesses, and analysts to prioritize areas for deeper investigation or intervention. For example, energy price volatility suggests the need for targeted risk-management strategies, while the steady rise in food prices signals potential pressure on consumers and supply chains. Overall, the findings support more informed budgeting, forecasting, pricing decisions, and policy planning by clearly identifying the categories most responsible for shifts in inflation. </p>
<p align="justify">It identifies the cheapest and most expensive months to buy products, detects short-term fake discounts, and shows how inflation increases the work hours needed to afford essentials.
</p> 

