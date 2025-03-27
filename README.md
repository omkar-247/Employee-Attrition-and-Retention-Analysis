# HR_Employee_Attrition
# Employee Attrition & Retention Analysis Dashboard

## 📊 Project Overview
This project focuses on analyzing employee attrition and retention factors using data analytics to provide insights into employee turnover. The goal is to help HR teams with strategic decisions that can reduce attrition and improve retention. The project includes a Power BI dashboard, SQL data processing, and data cleaning in Excel.

Employee attrition is a critical factor that affects the performance and cost of organizations. Through this project, the dataset of 1,470 employees is analyzed to identify the factors contributing to turnover. The analysis includes demographics, performance metrics, and work-life balance indicators.

#### Objective:
- Understand the underlying reasons for employee turnover.
- Provide actionable insights using data-driven decisions.
- Visualize employee attrition trends using Power BI.

## 🛠 Tools Used
- **SQL**: Data extraction, manipulation, and cleaning.
- **Excel**: Preprocessing and initial data cleaning.
- **Power BI**: Building interactive dashboards and DAX calculations.

## Project Workflow

### 1. **Data Collection**
- Imported raw employee data from Excel into SQL for structured analysis and exploration.
- Dataset includes employee demographics, performance metrics, and attrition flags.

### 2. **Data Cleaning**
- Handled missing values and outliers using SQL queries and Excel:
  - Removed or imputed missing entries for critical columns like `MonthlyIncome` and `YearsAtCompany`.
  - Filtered out inconsistent or erroneous records (e.g., negative tenure values).
- Ensured data consistency by standardizing categorical variables (e.g., `Gender`, `Department`).

### 3. **Data Analysis**
- Queried employee data using SQL to uncover key drivers of attrition:
  - Analyzed attrition trends by department, age group, gender, and job role.
  - Calculated attrition rates and segmented employees based on risk factors.
- Example SQL Query:
  ```sql
  SELECT 
      Department,
      COUNT(*) AS TotalEmployees,
      SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritedEmployees,
      ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) AS AttritionRate
  FROM Employees
  GROUP BY Department;

## 🔑 Key Insights from the Analysis

This section highlights the key findings derived from the analysis of employee attrition and retention data. These insights provide actionable recommendations for HR teams to improve workforce stability.

---

## 1. Employee Demographics

- **Average Age of Employees**: 37.5 years.
- **Gender Distribution**: 
  - 60% Male
  - 40% Female
- **Average Monthly Income**: $4,200

---

## 2. Attrition Drivers

### High Attrition in Sales Department
- **45% of sales employees left the company**, indicating significant challenges within this department.

### Key Factors Contributing to Attrition:
1. **Low Monthly Income**: Employees with lower income levels were more likely to leave.
2. **Job Dissatisfaction**: Low satisfaction scores correlated strongly with higher attrition rates.
3. **Lack of Career Advancement Opportunities**: Employees who perceived limited growth opportunities were at higher risk of leaving.

---

## 3. Retention Improvement Opportunities

### Increased Salary and Promotions
- **Income Disparity**: Identified significant gaps in compensation, particularly among high-performing employees.
- **Slow Career Growth**: Employees with stagnant roles or delayed promotions showed higher attrition rates.

### Targeted Employee Engagement
- **Tailored Programs**: Recommended implementing engagement initiatives such as mentorship programs, career development workshops, and recognition systems.
- **Critical Areas**: Focus on improving job satisfaction in departments with high attrition (e.g., Sales) and among younger employees (<30 years).

---
 

### Data Cleaning Process

- **Step 1: Importing the Dataset**  
  The raw HR Employee Attrition dataset was imported into Excel for initial data cleaning.

- **Step 2: Removing Unnecessary Columns**  
  Redundant columns such as `EmployeeCount`, `Over18`, and `StandardHours` were removed.

- **Step 3: Handling Missing Values**  
  Missing values were identified and appropriately handled using Excel functions.

- **Step 4: Outliers Detection**  
  Unusual data points were examined and addressed.

- **Step 5: Saving Clean Data**  
  The cleaned dataset was saved and exported for further use in Power BI and SQL.

#### Cleaned Dataset Link:
- [Cleaned HR Employee Attrition Data](./HR_Employee_Attrition_Cleaned.csv)
  
## 🗂️ Data
The dataset used for this analysis is included:
- **HR_Employee_Attrition_Cleaned.csv**: Final cleaned dataset used in the analysis.

### SQL Data Exploration & Transformation

SQL was used to explore the cleaned dataset and generate key insights. Below are some key SQL queries used in the project:

---

#### Query 1: Attrition by Gender
```sql
SELECT Gender, 
       COUNT(EmployeeID) AS TotalEmployees, 
       SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
       ROUND(AVG(MonthlyIncome), 2) AS AvgIncome
FROM Employees
GROUP BY Gender;
```
Query 2: Employee Attrition by Job Role
```
sql
Copy
Edit
SELECT JobRole, COUNT(EmployeeID) AS TotalEmployees, 
       SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount
FROM Employees
GROUP BY JobRole;
```
Query 3: Attrition by Age Group
```
sql
Copy
Edit
SELECT Age, COUNT(EmployeeID) AS TotalEmployees, 
       SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount
FROM Employees
GROUP BY Age;
```
For further details, refer to the SQL queries in the [SQL_Scripts](https://github.com/omkar-247/HR_Employee_Attrition/blob/main/sql%20query%20employee%20attrition.sql)
  


---

#### ** Power BI Dashboard**:
```markdown
```
The core of this analysis is presented through an interactive Power BI dashboard that provides visual insights into employee attrition. The dashboard helps to identify key factors such as job role, age, gender, work-life balance, and monthly income that contribute to employee turnover.

#### Key Features:
- **Attrition by Gender**: Compare attrition rates between male and female employees.
- **Attrition by Job Role**: Identify which job roles are most prone to turnover.
- **Attrition by Monthly Income**: Analyze income distribution among employees who have left the organization.
- **Attrition by Overtime**: See how overtime contributes to higher attrition rates.

#### Dashboard Snapshots:
![Attrition Dashboard](https://github.com/omkar-247/HR_Employee_Attrition/blob/main/screenshots.jpg)


### DAX Calculations in Power BI

Key metrics for the dashboard were calculated using DAX formulas in Power BI. Here are the DAX formulas used to create important insights:

#### DAX Formula 1: Attrition Rate
```DAX
Attrition Rate = 
DIVIDE(
    COUNTROWS(FILTER(Employee, Employee[Attrition] = "Yes")),
    COUNTROWS(Employee)
)
```
DAX Formula 2: Average Monthly Income of Attrition
```
Average Attrition Income = 
CALCULATE(AVERAGE(Employee[MonthlyIncome]), Employee[Attrition] = "Yes")
```
DAX Formula 3: Attrition by Job Role
```
Attrition by Job Role = 
COUNTX(FILTER(Employee, Employee[Attrition] = "Yes"), Employee[JobRole])


---
```
#### **6. Insights and Conclusion**:
```markdown
### Insights from the Analysis
```
After analyzing the dataset, several key factors contributing to employee attrition were identified:

- **High Attrition in Sales Executive Role**: Sales Executives had the highest turnover rates.
- **Impact of Overtime**: Employees working overtime were more likely to leave the organization.
- **Age Factor**: Employees between 30-40 years showed the highest attrition rates.
- **Income Factor**: Employees earning lower than average monthly income tended to leave more often.

### Business Recommendations:
- Introduce flexible work schedules and better work-life balance.
- Provide incentives for high-performance employees in high-turnover roles.
- Implement targeted retention strategies for employees in the 30-40 age group.

## Links  

- **GitHub Repository**: [Employee Attrition Analysis](https://github.com/omkar-247/HR_Employee_Attrition)  
- **Power BI Dashboard**: [View Dashboard](https://github.com/omkar-247/HR_Employee_Attrition/blob/main/HR%20Employee%20Attrition.pbix)  
- **SQL Queries**: [Explore SQL Queries](https://github.com/omkar-247/HR_Employee_Attrition/blob/main/sql%20query%20employee%20attrition.sql)


