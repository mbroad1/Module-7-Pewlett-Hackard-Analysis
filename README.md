# Module 7 Challenge: Pewlett Hackard Analysis

## Purpose:
The purpose of this analysis is to determine the number of retiring employees per title and to identify employees who are eligible to participate in a mentorship program in order to prepare for the upcoming retirement of many senior employees from the company, Pewlett Hackard. This analysis will be performed by querying datasets in pgAdmin using SQL statements.
---
## Results:

### 1) Majority of Employees Retiring Have Senior Positions and Have Worked For Decades
![](https://github.com/mbroad1/Module-7-Pewlett-Hackard-Analysis/blob/main/Images/retirement_titles.png)
- When analyzing the employees ready to retire by title, I found that the majority of titles of these employees were of seniority ranking such as **Senior Engineer**, **Senior Staff**, and **Technique Leader**.
    - Therefore, many senior-ranked employees will be retiring soon and in a similar time frame.
- Also, many employees that are ready to retire have worked at the company for decades as the majority started working at the company in the 80's and 90's.

### 2) The Unique Titles Table Corroborates the First Point
![](https://github.com/mbroad1/Module-7-Pewlett-Hackard-Analysis/blob/main/Images/unique_titles.png)
- Likewise, when looking at the unique titles table, we can see that employees ready to retire have senior-ranked positions like **Senior Engineer**, **Senior Staff**, and **Technique Leader** as well as positions like **Staff**, **Engineer**, and **Assistant Engineer**.
    - This observation corroborates the findings found in the retirement title table, and also shows that in general, the company would be losing a significant amount of other employees besides senior-ranked employees like Engineers and Staff. 

### 3) The Number of Senior-Ranked Employees Ready to Retire is Significantly High
![](https://github.com/mbroad1/Module-7-Pewlett-Hackard-Analysis/blob/main/Images/retiring_titles.png)
- The retiring titles table reveals that the total number of Senior Engineers that are ready to retire is **29,414** and the total number of Senior Staff ready to retire is **28,254**.
- Likewise, the number of Engineers that are ready to retire is **14,222**, the number of Staff ready to retire is **12,243**, the number of Technique Leaders ready to retire is **4,502**, the number of Assistant Engineers ready to retire is **1,761**, and finally, the number of Managers ready to retire is **2**.
- Overall, there is a very high number of senior-ranked employees and a significant number of other types of employees prone to retire soon.

### 4) The Need to Incentivize Joining the Mentorship Eligibility Program
![](https://github.com/mbroad1/Module-7-Pewlett-Hackard-Analysis/blob/main/Images/mentorship_eligibility.png)
- Due to the high number of senior-ranked employees and employees in general that are ready to retire in the near future, it is pertinent that these employees are incentivized to stay with the company and train younger employees by joining the mentorship eligibility program.
   - This program will let employees that are ready to retire taper off from the work-load of their roles so that they can spend more time training younger employees so that these employees can transition into these senior-ranked roles as many will be vacated soon. 
---
## Summary:
1) **How many roles will need to be filled as the "silver tsunami" begins to make an impact?**
The number of roles that will need to be filled is **90,398** when all of the numbers in the retiring titles table is added up. However, this number is greater than the actual number of roles that need to be filled out because the retiring titles table was built from a query that had COUNT(*) in it, which means all titles that an employee had were counted, and therefore, the employee and their various titles were all included in these counts.

In order to resolve this issue, another query should be done where only the most recent title given to the employee is featured in a table, and then each title is counted from that table giving a true representation of how many roles need to be filled at the company.

2) **Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?**
According to the high number of senior-ranked employees that are ready to retire, there is indeed a very high number of senior-ranked employees that are qualified to mentor the next generation of Pewlett Hackard employees.

Another query that can be done to corroborate this would be to see which and how many senior-ranked, retiring employees had at least 20 years of experience at the company. Information from this query would reveal the number of qualified, retiring employees ready to mentor based on seniorship in their positions and number of years at the company.
