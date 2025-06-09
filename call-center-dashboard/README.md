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
   
5. **Call by Customer Demographics and Gender**
   
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

![image](https://github.com/user-attachments/assets/b94a4bd6-8751-4dcf-aaa7-7be5ff418f9f)


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
5. Rounded the rating value column to see the distribution rating of each representative and how satisfied customer

   Below is what it looks like after preprocessing data
![image](https://github.com/user-attachments/assets/732c883f-a62b-4328-9b85-8a4e7b2e97e8)


---

# Data Exploration & Insight

**1.** **Key metrics**
   
   ![image](https://github.com/user-attachments/assets/6ce05481-f0ae-4989-813a-7cf6efc4bac2)

**2.** **Monthly Trend**

   ![image](https://github.com/user-attachments/assets/f7afcfe8-8088-440a-a551-a9b8b89221e7)
   ![image](https://github.com/user-attachments/assets/b932aec4-5a8f-4b3d-a661-a006f00688b7)

   **Insight:**
   
   There are two major peaks in March and October.
   

   **Action:**
   
   Further investigation is needed to identify the exact reasons behind these fluctuations—whether they’re caused by internal factors (campaigns, promotions) or external ones (seasonality, customer behavior).

**3.** **Weekly Volume**
   
   ![image](https://github.com/user-attachments/assets/b197123f-2b51-447f-84b7-4f44feff2c99)
   ![image](https://github.com/user-attachments/assets/4cb4b122-db48-4fe3-8635-7546dfa9eb70)

   **Insight:**
   
   Pattern indicates customer interaction peaks just before and during the weekend, with a mid-week spike as well.


   **Action:**
   
   Consider adding temporary support or part-time staff during peak hours.


**4.** **Representative Contribution**

   ![image](https://github.com/user-attachments/assets/b5309ba0-57de-4cb5-ad25-96c83d96c43f)
   ![image](https://github.com/user-attachments/assets/c6ad28c0-2228-45b1-b9a8-15891514a850)


   **Insight:**
   - R04 needs immediate attention—both calls and revenue are below average.
   - R02 and R03 are top performers. Both regions show strong performance in both call volume and revenue, especially R03 which is most efficient.

   **Action:**
   - Investigate R04's Poor Performance. Conduct a root cause analysis—check call handling quality, product appeal, or agent performance.
   - Analyze Success Factors in R02 & R03. Identify what’s working (scripts, agents, offers, customer profiles) and replicate best practices across other regions.
   

**5.** **Call by Customer Demographics and Gender**
   
   ![image](https://github.com/user-attachments/assets/ac1266c2-5616-4e52-a757-1ce74dc5b37d)
   ![image](https://github.com/user-attachments/assets/a5563d5c-a49d-41e6-9ba2-a59054a243de)

   **Insight:**

   - Cleveland has the highest call volume overall, especially from female callers
   - Columbus is male-dominated in caller volume
   - Cincinnati shows a more balanced call distribution
  
   **Action:**

   Customize Support Strategies by Gender Demographics
   - Cleveland: Consider training or assigning more female support agents, especially if the product or issue involves female-preferred categories.
   - Columbus: Ensure messaging and support material is well-tailored to male preferences.
   - Cincinnati: Maintain a balanced staffing and communication strategy.

**6.** **Rating Distribution**

   ![image](https://github.com/user-attachments/assets/88fa0058-5408-4586-8ca1-bd4bcc2f4fa9)
   ![image](https://github.com/user-attachments/assets/a574f6bf-8334-46cd-a1f8-979a3f3be1b6)

   **Insight:**
   
   - Majority of users gave high ratings (4 and 5 stars):
      - Rating 4: ~450 users (highest)
      - Rating 5: ~300+ users

      This indicates a high overall customer satisfaction level.
        
   - Low ratings (1 and 2 stars) are minimal:
      - Rating 1: Very few
      - Rating 2: <100

      Indicates few critical issues, but still important to address root causes.

   **Action:**
   
   - Leverage High Ratings (4 & 5)
     - Highlight testimonials and feedback from these users in marketing materials.
     - Identify top-performing agents, products, or features that contributed to this success.
       
   - Address Low Ratings Immediately (1 & 2)
     - Follow up directly with these users if possible to recover trust and gather deeper insight.
     - Use their feedback to patch gaps in service or product quality.

**7.** **Customer Revenue Analysis**

   ![image](https://github.com/user-attachments/assets/fb995596-e4d3-485d-9e2b-7d3aaa652e34)

   **Insight:**
   
   High Revenue Disparity Across Regions in Cleveland
   
   Example:
   - C0002: R01: $1,233, R02: $223, R03: $1,680
   - C0013: R01: $1,255, R02: $516, R03: $1, 874
   
   This shows large inconsistencies between region performance within the same city, indicating a potential imbalance in strategy, product placement, or customer experience.

   **Action:**

   Focus on Underperforming Regions
   
   Example: 
   - R02 in Cleveland is very weak → conduct a strategic review of sales approach and team performance in that region.
   
   Improve product targeting or marketing strategy for better balance.

# The Dashboard

![Untitledvideo-MadewithClipchamp1-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/91c6850c-a1ae-41e6-8b2d-8e80f4880560)

For better experince


   







   


   

