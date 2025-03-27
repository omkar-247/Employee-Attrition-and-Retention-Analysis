CREATE DATABASE EmployeeAttritionDB;

CREATE TABLE EmployeeAttrition (
    Age INT,
    Attrition VARCHAR(3),
    BusinessTravel INT,
    DailyRate INT,
    Department INT,
    DistanceFromHome INT,
    Education INT,
    EducationField VARCHAR(50),
    EmployeeNumber INT PRIMARY KEY,
    EnvironmentSatisfaction INT,
    Gender INT,
    HourlyRate INT,
    JobInvolvement INT,
    JobLevel INT,
    JobRole VARCHAR(50),
    JobSatisfaction INT,
    MaritalStatus INT,
    MonthlyIncome INT,
    MonthlyRate INT,
    NumCompaniesWorked INT,
    OverTime INT,
    PercentSalaryHike INT,
    PerformanceRating INT,
    RelationshipSatisfaction INT,
    StockOptionLevel INT,
    TotalWorkingYears INT,
    TrainingTimesLastYear INT,
    WorkLifeBalance INT,
    YearsAtCompany INT,
    YearsInCurrentRole INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager INT
);

-- Overall Attrition Rate
SELECT 
  COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS AttritionRate
FROM 
  EmployeeAttrition;

-- Attrition by Department
SELECT 
  Department, 
  COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS AttritionRate
FROM 
  EmployeeAttrition
GROUP BY 
  Department;
  
-- Attrition by Gender
SELECT 
  Gender, 
  COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS AttritionRate
FROM 
  EmployeeAttrition
GROUP BY 
  Gender;

-- Attrition by Age Group
SELECT 
  CASE 
    WHEN Age < 25 THEN 'Under 25'
    WHEN Age BETWEEN 25 AND 35 THEN '25-35'
    WHEN Age BETWEEN 36 AND 45 THEN '36-45'
    ELSE 'Above 45'
  END AS AgeGroup,
  COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS AttritionRate
FROM 
  EmployeeAttrition
GROUP BY 
  AgeGroup;
  
-- Attrition by Business Travel
SELECT 
  BusinessTravel, 
  COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS AttritionRate
FROM 
  EmployeeAttrition
GROUP BY 
  BusinessTravel;

-- Attrition by OverTime
SELECT 
  OverTime, 
  COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS AttritionRate
FROM 
  EmployeeAttrition
GROUP BY 
  OverTime;

-- Attrition by Performance Rating
SELECT 
  PerformanceRating, 
  COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS AttritionRate
FROM 
  EmployeeAttrition
GROUP BY 
  PerformanceRating;
  
-- Attrition by Job Satisfaction
SELECT 
  JobSatisfaction, 
  COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS AttritionRate
FROM 
  EmployeeAttrition
GROUP BY 
  JobSatisfaction;
  
-- Attrition by Work-Life Balance
SELECT 
  WorkLifeBalance, 
  COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS AttritionRate
FROM 
  EmployeeAttrition
GROUP BY 
  WorkLifeBalance;

-- Attrition by Distance from Home
SELECT 
  CASE 
    WHEN DistanceFromHome < 5 THEN 'Near'
    WHEN DistanceFromHome BETWEEN 5 AND 15 THEN 'Moderate'
    ELSE 'Far'
  END AS CommuteDistance,
  COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS AttritionRate
FROM 
  EmployeeAttrition
GROUP BY 
  CommuteDistance;
  
-- Attrition by Monthly Income
SELECT 
  CASE 
    WHEN MonthlyIncome < 5000 THEN 'Low Income'
    WHEN MonthlyIncome BETWEEN 5000 AND 10000 THEN 'Medium Income'
    ELSE 'High Income'
  END AS IncomeGroup,
  COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS AttritionRate
FROM 
  EmployeeAttrition
GROUP BY 
  IncomeGroup;

-- Attrition by Job Involvement
SELECT 
  JobInvolvement, 
  COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS AttritionRate
FROM 
  EmployeeAttrition
GROUP BY 
  JobInvolvement;







