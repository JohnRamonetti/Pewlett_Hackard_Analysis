# Pewlett_Hackard_Analysis
Module 7 - PostgreSQL and pgAdmin

## OVERVIEW
### Purpose:  The purpose of the current analysis is to evaluate the Pewlett Hackard employee profiles to anticipate imminent retirements and to plan accordingly, so that the company is not left suddenly and embarrassingly short-staffed.  After intial review and evaluation of the various employee datafiles received (see RESOURCES section below), the current analysis determines the number of retiring employees per position (title), and to identify employees who are eligible to participate in a mentorship program to help groom current junior employees for higher responsibility.  


## RESOURCES
- Source Data: departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv
- Software:  PostgreSQL 11.11, pgAdmin 4.30


## RESULTS
  1.  Retirement Titles (retirement_titles.csv).  This table demonstrates the urgent need for the current analysis, showing almost 134K positions that have been held by employees that will retire soon (i.e., born between January 1, 1952 and December 31, 1955).  This table is useful for the mentorship program in that it shows the current position as well as the progression of positions held by those employees that will be retiring soon.  

  2.  Unique Titles (unique_titles.csv).  This table show the most recent title of each retiring employee.  It also shows that over 90,000 employees are ready to retire.

  3.  Retiring Titles (retiring_titles.csv)  This table shows the number of retirement-ready employees by their most recent job title, showing that the greatest number of retirees will be from "Senior Engineer" or "Senior Staff" positions.  It also shows that at least 2 managers are ready to retire.

  4.  Mentorship Eligibility (current employees who were born between January 1, 1965 and December 31, 1965) (mentorship_eligibilty.csv)  This table shows the 1549 current employees, based simply on age, that are eligible to be mentors in the proposed Employee Mentoring program.


## SUMMARY
### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
#### There will be an estimated 90,000 retirements in short order.  Assuming there is no change in internal need for these positions, there are many roles to fill, which are relatively evenly split between engineering (approximately 45k) and staff (approximately 41k) positions.  Also, approximately 4-5k technique leader roles will need to be filled.  And there will likely be a couple manager positions to fill.

### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees? 
#### There are only about 1500 retirement-ready employees eligible to be mentors in the proposed Employee Mentoring Program.  That's just 1 mentor for every 60 positions that will be vacated by retirement.  If the goal of the mentoring program is to help employees advance to fill more senior vacating roles, then more mentors will be needed.  Additional hiring will obviously also need to occur to fill the overall need.

### Additional thoughts/ queries/ tables.
#### An additional query table (mentors_by_title.csv) was prepared showing that the titles of eligible mentors (discussed in Results #4 above) are in similar proportions to titles of retiring employees (discussed in Results #3 above).  That much is good, however, further analysis should be done to determine from which departments the retirements are imminent (for example, our cursory analysis showed that Sales and Development will account for approximately 15k retirements) and which departments have enough potential mentors.  

#### As mentioned in the Results #1 Retirement Titles section above, the Retirement Titles table includes the progression of titles for many retiring employees.  This table should be consolidated (grouped) in a way that makes it more useful for the Mentorship Program.  Specifically, it would be helpful to prepare a table that shows, on average, how long it takes for employees to progress from, e.g., "Assistant Engineer" to "Engineer" to "Senior Engineer". 



