CREATE DATABASE FutureEmployeePerformance;
use FutureEmployeePerformance;
# 🟣 TOP CARDS (KPIs)
#1. Total Employee Count
SELECT COUNT(*) AS TotalEmployees
FROM  `future-employee-performance`;
#2. Average Age
SELECT AVG(Age) AS AverageAge
FROM `future-employee-performance`;
#3. Average Years of Experience
SELECT AVG(ExperienceYearsAtThisCompany) AS AvgExperience
FROM `future-employee-performance`;
#4. Average Hourly Rate
SELECT AVG(EmpHourlyRate) AS AvgHourlyRate
FROM `future-employee-performance`;

#5. Average Performance Rating
SELECT AVG(PerformanceRating) AS AvgPerformanceRating
FROM `future-employee-performance`;

# Count of Employees by Age (Male/Female)
SELECT 
    Age,
    Gender,
    COUNT(*) AS EmployeeCount
FROM `future-employee-performance`
GROUP BY Age, Gender
ORDER BY Age;

# Experience vs Performance Rating
SELECT 
    TotalWorkExperienceInYears,
    PerformanceRating,
    COUNT(*) AS EmployeeCount
FROM `future-employee-performance`
GROUP BY TotalWorkExperienceInYears, PerformanceRating
ORDER BY TotalWorkExperienceInYears;

#Job Satisfaction by Salary Hike %
SELECT 
    EmpLastSalaryHikePercent,
    AVG(EmpJobSatisfaction) AS AvgJobSatisfaction
FROM `future-employee-performance`
GROUP BY EmpLastSalaryHikePercent
ORDER BY EmpLastSalaryHikePercent;

# Employee Count by Gender and Overtime
SELECT 
    Gender,
    OverTime,
    COUNT(*) AS EmployeeCount
FROM `future-employee-performance`
GROUP BY Gender, OverTime;

# Department-wise Average Hourly Rate
SELECT 
    EmpDepartment,
    AVG(EmpHourlyRate) AS AvgHourlyRate
FROM `future-employee-performance`
GROUP BY  EmpDepartment
ORDER BY AvgHourlyRate DESC;

#  Department-wise Attrition
SELECT 
    EmpDepartment,
    Attrition,
    COUNT(*) AS EmployeeCount
FROM `future-employee-performance`
GROUP BY EmpDepartment, Attrition
ORDER BY EmpDepartment;

# Work-Life Balance Distribution
SELECT 
    EmpWorkLifeBalance,
    COUNT(*) AS EmployeeCount
FROM `future-employee-performance`
GROUP BY EmpWorkLifeBalance
ORDER BY EmpWorkLifeBalance;

# Marital Status Count
SELECT 
    MaritalStatus,
    COUNT(*) AS EmployeeCount
FROM `future-employee-performance`
GROUP BY MaritalStatus;

#Count of Employees by Department & Business Travel Frequency
SELECT 
    EmpDepartment,
    BusinessTravelFrequency,
    COUNT(ï»¿EmpNumber) AS EmployeeCount
FROM `future-employee-performance`
GROUP BY EmpDepartment, BusinessTravelFrequency
ORDER BY EmpDepartment;

# Count of Employees by Distance From Home & Gender
SELECT 
    DistanceFromHome,
    Gender,
    COUNT(ï»¿EmpNumber) AS EmployeeCount
FROM `future-employee-performance`
GROUP BY DistanceFromHome, Gender
ORDER BY DistanceFromHome;

 # Employee Attrition by Performance Rating
 SELECT
    PerformanceRating,
    Attrition,
    COUNT(ï»¿EmpNumber) AS EmployeeCount
FROM `future-employee-performance`
GROUP BY PerformanceRating, Attrition
ORDER BY PerformanceRating;

# Employee Job Satisfaction Distribution
SELECT 
    EmpJobSatisfaction,
    COUNT(ï»¿EmpNumber) AS EmployeeCount
FROM `future-employee-performance`
GROUP BY EmpJobSatisfaction
ORDER BY EmpJobSatisfaction;

# Count of Employees by Education Level
SELECT 
    EducationBackground,
    COUNT(ï»¿EmpNumber) AS EmployeeCount
FROM `future-employee-performance`
GROUP BY EducationBackground
ORDER BY EducationBackground;

# Attrition by Gender (Pie Chart)
SELECT 
    Gender,
    Attrition,
    COUNT(ï»¿EmpNumber) AS EmployeeCount
FROM `future-employee-performance`
GROUP BY Gender, Attrition
ORDER BY Gender, Attrition;















