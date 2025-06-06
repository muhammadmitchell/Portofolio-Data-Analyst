# Call Centre Dashboard using Excel 

This project presents an interactive **Call Centre Performance Dashboard** built in **Microsoft Excel**. It analyzes call volume, revenue, agent performance, and customer satisfaction that combines many valuable and practical excel concepts like **Power Pivot, Slicer, Interactive Charts, and conditional formatting**.

---

# Question that guide the analysis

1. **Key Metrics**
   
   - Total number of calls
   - Total revenue & duration generated
   - Average caller ratings
   - Total happy callers
     
2. **Monthly Trend**
   
   What is the monthly trend of calls in a year?
   
3. **Weekly Volume**
   
   How do calls vary across the days of the week?
   
4. **Representative Contribution**
   
   How many calls did each representative handle and
   how much revenue did they generate?
   
5. **Call by Customer Demographics**
   
   Gender-based call count categorized by customer demographics?
   
6. **Rating Distribution**
    
   How satisfied customer?
   
7. **Customer Revenue Analysis**
    
   What is happening at each customer level across demographics for each rep?

---

# Dataset Source

I sourced the call center dataset from https://chandoo.org/wp/wp-content/uploads/2024/09/sample-data-pivots-blank.xlsx where the website module i learned about pivot table and chart. 

In this dataset, there are 2 tables, namely the calls and customer tables

Sample from Table Calls
![image](https://github.com/user-attachments/assets/ed50807a-03a5-43ec-9416-74061403402b)

Sample from Table Customers

![image](https://github.com/user-attachments/assets/d68a006c-7bc8-4ab1-8ffe-ffecb18cf3ea)

---

# Preprocessing Data

Because the data is clean. there are no null values, format errors, data duplication, and data anomalies. so here are the data transformation steps:
1. Converted the Date column type to Date because it comprises of date and time.
2. Added a new column called financial year starts in July which analyzes year to date totals sales
3. Create a second column that converts the date to the day of the week to see the daily trend
4. Created a "Duration Bucket" column
   - Under 10 mins
   - 10 to 30 mins
   - 30 to 60 mins
   - 1 to 2 hours
   


