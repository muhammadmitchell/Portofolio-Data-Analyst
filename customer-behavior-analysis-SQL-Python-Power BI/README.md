# 🛍️ Customer Shopping Behavior Analysis

## 📌 Project Overview

This project analyzes customer shopping patterns using transactional data to understand spending behavior, product preferences, customer segmentation, and the impact of subscriptions and discounts on revenue. The analysis aims to support data-driven business decision-making.

The dataset contains **3,900 purchase transactions** across multiple product categories.

---

## 🎯 Objectives

* Identify customer shopping patterns and spending behavior
* Analyze the impact of discounts and subscriptions on revenue
* Segment customers based on purchasing behavior
* Present insights through an interactive dashboard

---

## 📊 Dataset Summary

* **Rows:** 3,900
* **Columns:** 18
* **Key Features:**

  * **Customer Demographics:** Age, Gender, Location, Subscription Status
  * **Purchase Details:** Item Purchased, Category, Purchase Amount, Season, Size, Color
  * **Shopping Behavior:** Discount Applied, Previous Purchases, Purchase Frequency, Review Rating, Shipping Type
* **Missing Values:** 37 missing values in the `review_rating` column

---

## 🧰 Tools & Technologies

* **Python:** Pandas (Data Cleaning & EDA)
* **Database:** MySQL
* **SQL:** Business analysis queries
* **Visualization:** Power BI

---

## 🔎 Data Preparation & Exploratory Data Analysis (Python)

The following steps were performed:

1. Loaded the dataset using Pandas
2. Conducted initial exploration using `df.info()` and `df.describe()`
3. Handled missing values:

   * Imputed missing values in `review_rating` using the median rating per product category
4. Standardized column names to *snake_case*
5. Feature engineering:

   * Created an `age_group` column by binning customer ages
   * Created purchase frequency features
6. Data consistency check:

   * Removed `promo_code_used` due to redundancy with `discount_applied`
7. Loaded the cleaned dataset into MySQL for further SQL analysis

---

## 📈 Data Analysis (SQL)

Key business questions answered using MySQL:

1. Revenue comparison by gender
2. Identification of high-spending customers who used discounts
3. Top 5 products with the highest average ratings
4. Comparison of average purchase amounts by shipping type
5. Subscriber vs non-subscriber analysis (average spend & total revenue)
6. Products with the highest percentage of discounted purchases
7. Customer segmentation: New, Returning, and Loyal
8. Top 3 most purchased products per category
9. Relationship between repeat buyers and subscription status
10. Revenue contribution by age group

---

## 📊 Dashboard (Power BI)

An interactive Power BI dashboard was built to visualize insights:

**Key KPIs:**

* Number of Customers
* Average Purchase Amount
* Average Review Rating

**Visualizations:**

* Donut chart: Customer distribution by Subscription Status
* Clustered column chart: Revenue & Sales by Category
* Clustered bar chart: Revenue & Sales by Age Group

**Interactivity:**

* Slicers for Subscription Status, Gender, Category, and Shipping Type
<img width="719" height="392" alt="Screenshot Customer Behavior Dashboard" src="https://github.com/user-attachments/assets/0b0d7127-2fa4-4da2-bbab-63b8cb0f1bfa" />



---

## 💡 Key Insights

* Most customers are non-subscribers
* Average purchase value is moderate
* **Clothing** and **Accessories** categories contribute the highest revenue
* Customers with more than five purchases are more likely to subscribe
* Young Adult and Middle-Aged segments generate the largest revenue contribution
* Customer satisfaction is good but not optimal

---

## 📌 Business Recommendations

1. Increase subscription adoption by offering exclusive subscriber benefits
2. Focus marketing efforts on high-performing product categories
3. Optimize marketing budget allocation based on age group performance
4. Implement loyalty programs to convert repeat buyers into loyal customers
5. Review discount policies to balance revenue growth and margin control

---

## 📬 Contact

**LinkedIn:** linkedin.com/in/muhammadmitchell

**Email:** mitchelmhmmd@gmail.com

---

This project demonstrates an end-to-end Data Analyst workflow, from data cleaning and SQL analysis to business insights and dashboard visualization.
