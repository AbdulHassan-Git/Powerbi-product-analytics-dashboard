# 📊 Power BI Product Analytics Dashboard

## 📌 Overview
This project is an interactive **Power BI Product Analytics Dashboard** built to provide a high-level view of product performance across **revenue, profit, units sold, discount bands, customer types, and country-level sales**.

The dashboard was developed using multiple datasets covering **products, sales, and discounts**, with a focus on combining **interactive visuals** and **validated calculations** to support better business reporting.

---

## 🧩 Business Problem
Management requested the development of a **high-level Product Analytics Dashboard** to support strategic decision-making and monitor key product performance metrics.

The dashboard needed to help answer important business questions around:

- 🌍 revenue performance by country  
- 📈 revenue trends over time  
- 🔄 year-over-year changes in profit and unit sales  
- 🏷️ revenue distribution by discount band  
- 📋 detailed revenue and profit performance by country and year  

---

## 🎯 Business Objective
The objective of this project was to build an interactive dashboard that enables management to quickly:

- monitor business performance  
- compare trends over time  
- evaluate discount impact  
- review year-over-year changes in profitability and units sold  

---

## ❓ Key Business Questions
- Which countries generate the highest revenue?
- How does revenue change over time by date and year?
- How are profit and unit sales performing year over year?
- How is revenue distributed across different discount bands?
- What are the revenue and profit details by country and year?
- What additional insights can improve management reporting and decision-making?

---

## 🗂️ Dataset
This project used multiple datasets related to:

- **Product data**
- **Sales transactions**
- **Discount band data**

These datasets were combined into a single Power BI model for analysis and reporting.

🙏 **Acknowledgment:**  
Special thanks to **Gaelim Holland** for the tutorial and dataset used as the foundation for this project.

---

## 🛠️ Tools Used
- **Power BI**
- **Power Query**
- **DAX**
- **SQL**

---

## 🔧 Data Preparation and Transformation
A major part of this project involved preparing the data before building the visuals.

### Key work completed:
- 🔗 combined multiple datasets into one reporting model
- 🧠 reviewed relationships between product, sales, and discount data
- 🧹 cleaned and transformed fields for reporting
- 🧮 created calculated columns and measures for revenue, cost, discount revenue, and profit
- 📅 corrected date issues affecting month-level analysis
- ✅ validated field types and summarization behavior
- 🚀 improved model reliability before building final visuals

---

## ✨ Dashboard Features
The final dashboard includes:

- 📈 **Profit YoY KPI**
- 📦 **Units Sold YoY KPI**
- 🌍 **Revenue by Country**
- 🗓️ **Revenue by Date and Year**
- 🏷️ **Discount Band Breakdown**
- 📋 **Detailed Table View**
- 🛍️ **Product-level interactive dashboard experience**
- 💡 **Custom tooltips for additional insight**
- 🎚️ **Year-based filtering**
- 🖼️ **Product image integration using image URLs**

---

## 📐 Key Measures
Some of the key calculations used in the dashboard include:

- Revenue
- Total Cost
- Profit
- Discount Revenue
- Units Sold
- Profit YoY
- Units Sold YoY

---

## 🚧 Challenges and Fixes
This project involved more than creating visuals. Several issues had to be identified and corrected during development.

### 1. 📅 Date Parsing Issue
The source date values were initially interpreted incorrectly, which caused month-level analysis to collapse into January.

**Fix:**  
The date handling logic was corrected so that monthly trends were displayed properly.

### 2. 📊 YoY Validation
Some YoY KPI values initially appeared unusually high and required validation.

**Fix:**  
The calculations were checked against actual current-year and prior-year values to confirm whether the outputs were correct.

### 3. 🔢 Summarization and Field Behavior
Certain fields, such as year, were being summarized incorrectly in Power BI.

**Fix:**  
Field settings were adjusted to ensure the correct behavior in visuals and slicers.

### 4. 🎨 Visual and Layout Issues
There were formatting challenges with image URLs, KPI cards, and dashboard layout.

**Fix:**  
Visual formatting and layout were refined to improve both appearance and usability.

Add this to your DAX formula:   Calendar = CALENDAR("1/1/2022","12/31/2023")
---

## 🖥️ Dashboard Preview

<img width="1301" height="771" alt="Dashboard Preview" src="https://github.com/user-attachments/assets/90bacef3-3a2b-46d4-91c3-eda11ea0e792" />

---

## 💡 Tooltip Preview

<img width="412" height="315" alt="Tooltip Preview" src="https://github.com/user-attachments/assets/856bb678-4de6-468f-8008-30cfe1946b39" />

---

## 👨‍💻 Author
**Abdul Valiyapurakkal Hassan**  

📧 Email: **Abdulkhayyoom896@gmail.com**  
💼 LinkedIn: **[abdul-khayyoom-v-h](https://www.linkedin.com/in/abdul-khayyoom-v-h-a65865125)**  
🌐 GitHub: **[AbdulHassan-Git](https://github.com/AbdulHassan-Git)**
