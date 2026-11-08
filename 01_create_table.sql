-- 01_create_table.sql
-- Creates the table for HR-Employee-Attrition.csv (1470 rows, 35 columns)

DROP TABLE IF EXISTS hr_attrition;

CREATE TABLE hr_attrition (
    Age                      INT,
    Attrition                VARCHAR(3),     -- Yes / No
    BusinessTravel           VARCHAR(30),
    DailyRate                INT,
    Department               VARCHAR(50),
    DistanceFromHome         INT,
    Education                INT,
    EducationField           VARCHAR(50),
    EmployeeCount            INT,
    EmployeeNumber           INT PRIMARY KEY,
    EnvironmentSatisfaction  INT,
    Gender                   VARCHAR(10),
    HourlyRate               INT,
    JobInvolvement           INT,
    JobLevel                 INT,
    JobRole                  VARCHAR(50),
    JobSatisfaction          INT,
    MaritalStatus            VARCHAR(20),
    MonthlyIncome            INT,
    MonthlyRate              INT,
    NumCompaniesWorked       INT,
    Over18                   VARCHAR(1),
    OverTime                 VARCHAR(3),     -- Yes / No
    PercentSalaryHike        INT,
    PerformanceRating        INT,
    RelationshipSatisfaction INT,
    StandardHours            INT,
    StockOptionLevel         INT,
    TotalWorkingYears        INT,
    TrainingTimesLastYear    INT,
    WorkLifeBalance          INT,
    YearsAtCompany           INT,
    YearsInCurrentRole       INT,
    YearsSinceLastPromotion  INT,
    YearsWithCurrManager     INT
);

-- Load the CSV:
--   MySQL : LOAD DATA LOCAL INFILE 'HR-Employee-Attrition.csv' INTO TABLE hr_attrition
--           FIELDS TERMINATED BY ',' IGNORE 1 LINES;
--   SQLite: .mode csv  /  .import --skip 1 HR-Employee-Attrition.csv hr_attrition
--   Any   : or just run  python run_analysis.py  (loads into SQLite automatically)
