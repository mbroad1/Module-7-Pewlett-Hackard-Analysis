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

### 4) There Are Not Many Current Employees Who are in Senior-Ranked Positions
![](https://github.com/mbroad1/Module-7-Pewlett-Hackard-Analysis/blob/main/Images/mentorship_eligibility.png)
- Taking a look at the mentorship eligibility table which contains all of the employees that will not retire in the near future, we see that there is a significantly fewer number of these employees in comparison to the number of employees ready to retire.
- In order to make sure the company does not lose a significant number of employees all at once, Pewlett-Hackard should consider hiring a significant number of people in the coming months to anticipate the work deficit that will come when many of these retirement eligible employees leave the company.
---
## Summary:
1) **How many roles will need to be filled as the "silver tsunami" begins to make an impact?**

The number of roles that will need to be filled is **90,398** when all of the numbers in the retiring titles table is added up.

In order to see how many current, younger employees there are, I counted the number of titles in the mentorship eligibility program, placed them in a new table called "current_emp_titles" and found the following results:
![](https://github.com/mbroad1/Module-7-Pewlett-Hackard-Analysis/blob/main/Images/current_emp_titles.png)
According to this new query that I performed, it looks like there are significantly fewer current employees that hold senior-ranked positions (only **416** Senior Engineers, **294** Senior Staff, and **77** Technique Leaders) in comparison to the number of senior-ranked employees ready to retire.

Therefore, it is pertinent that Pewlett-Hackard start hiring a huge volume of new employees now so that they can be funneled into the mentorship eligibility program to be trained by employees ready to retire.

2) **Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?**
According to the high number of senior-ranked employees that are ready to retire, there is indeed a very high number of senior-ranked employees that are qualified to mentor the next generation of Pewlett Hackard employees.

Another query that can be done to corroborate this would be to see which and how many senior-ranked, retiring employees had at least 20 years of experience at the company. Information from this query would reveal the number of qualified, retiring employees ready to mentor based on seniorship in their positions and number of years at the company.
