# Netflix Movies & Shows Data Visualization (2022)

## 📌 Project Overview

This project focuses on **exploratory data analysis and data visualization** of Netflix Movies and Shows released up to 2022. The objective is to understand content distribution, viewer preferences, and key patterns across genres, release years, durations, and IMDb ratings.

The analysis is designed to support **data-driven insights** that can help users, analysts, or business stakeholders better understand Netflix’s content strategy.

---

## 📊 Dataset Information

* **Source**: Kaggle – Netflix Movies & Shows dataset
* **Total Records**: ~5,000 titles
* **Tools Used**:

  * Python
  * Google Colab
  * Pandas, Matplotlib, Seaborn, Numpy

### Columns Included:

* Title
* Type (Movie / Show)
* Release Year
* Duration
* Genre
* Country
* IMDb ID
* IMDb Score
* IMDb Votes

---

## 🧹 Data Preprocessing

Before visualization, several preprocessing steps were performed:

* **Identified missing values in**:

  * `title`
  * `imdb_id`
  * `imdb_score`
  * `imdb_votes`
* **Handling Missing Values**:

  * Categorical columns (`title`) filled using the most frequent value
  * Numerical columns (`imdb_score`, `imdb_votes`) filled using mean values

This step ensured data consistency and reliability for analysis.

---

## 🔍 Analysis & Visualizations

The following visualizations were created to explore the dataset:

### 1️⃣ Pareto Diagram – Release Year Distribution

* Majority of Netflix content was released between **2010–2020**
* **2019** recorded the highest number of releases

### 2️⃣ Top 7 Genres on Netflix

* Drama is the most dominant genre with over **2,800 titles**
* Indicates strong audience interest in narrative-driven content

### 3️⃣ Boxplot – IMDb Score by Content Type

* **Shows**: IMDb score mostly between **6.5 – 7.5**
* **Movies**: IMDb score mostly between **5.5 – 7.0**
* Shows tend to have slightly higher and more consistent ratings

### 4️⃣ Bar Chart – Content Duration Distribution

* Most content falls within **0–150 minutes**
* Duration around **25 minutes** has the highest number of titles

### 5️⃣ Donut Chart – Movies vs Shows

* **Movies**: 64.7%
* **Shows**: 35.3%
* Netflix’s catalog is dominated by movie-type content

---

## 📈 Key Insights

* Netflix content is heavily dominated by **Movies** rather than Shows
* **Drama and Comedy genres** lead the platform’s content distribution
* Shows generally receive **higher IMDb ratings** compared to Movies
* Most Netflix content is optimized for **short-to-medium duration viewing**

---

## 💡 Business Recommendations

* Continue investing in **Movie content**, especially in **Drama and Comedy genres**
* Improve quality consistency of Movies to match Show-level IMDb ratings
* Leverage historical peak years (e.g., 2019) to analyze successful content strategies

---

## 📝 Notes

This project is part of a **data analyst portfolio** and demonstrates skills in:

* Data cleaning
* Exploratory Data Analysis (EDA)
* Data visualization
* Insight generation

