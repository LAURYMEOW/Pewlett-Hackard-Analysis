# Pewlett-Hackard-Analysis

## Overview of the analysis:

For the mentoring program proposed by the managers of the sales and development departments where experienced and successful employees can will stepping into a part-time role instead of retiring completely, softening the impact of the massive employees retirement.   
We are asked determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program.


## Results:

* For the above requirement, we had to create a table of unique_titles where we retrieve the personal information of the employees filtering it so that only the employees who are about to retire appear  plus the title and the date they held the last position, thus guaranteeing the elimination of duplicate data.

### Table 1. Unique Titles
![Unique titles](https://github.com/LAURYMEOW/Pewlett-Hackard-Analysis/blob/main/unique_titles.png)

* This unique_table helped us to create the retiring_table that contains the number of titles filled by employees who will retiring. This way we have a better idea of the positions to be filled by the departure of the next retirees and evaluate the number of training programs that need to be implemented.

### Table 2. Retiring Titles
![Retiring titles ](https://github.com/LAURYMEOW/Pewlett-Hackard-Analysis/blob/main/retiring_titles.png)

In this last table it can be seen that the majority of future retirees are Senior Engineers followed by Senior Staff.
Let's remember that there are certain doubts about updating the databases because some inconsistencies were found while we were doing the data analysis. Among them, the one related to the number of managers with respect to the number of departments.
This is important here because we have 2 managers about to retire. We would like to be sure that the information is correct to evaluate the need to fill these key positions.

*To determine the employees eligible for the Mentorship Program, a new table was created where the personal information of the employees is filtered, as well as the information on their relationship with the company and the last position obtained. This information was filtered so that only employees who are about to retire and who also have a certain age that guarantees their experience appear. The result is as follows:

### Table 3. Mentorship Elegibility
![Mentorship elegibility ](https://github.com/LAURYMEOW/Pewlett-Hackard-Analysis/blob/main/mentorship_elegibility.png)

If we do the Count by the number of employees we have a quantity of 1,549 employees who are eligible to be mentors. A considerable amount to avoid a Tsunami Silver.
In the table it can be seen that these employees have experience in various areas of the company which will allow covering the minimum training requirements for new employees.

## Summary:

1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?
To find out how many roles will need to be filled, the count clause is applied to the unique_titles table, which is the table that returns the worker number without duplication.
The result is 72,458 spaces to fill among the 9 departments.

### Image 1. Count

![Count](https://github.com/LAURYMEOW/Pewlett-Hackard-Analysis/blob/main/Count_summary.png)

2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
It is known that we will have 72,458 slots and 1,549 potential mentors. If we make a correspondence rule, each mentor would have to advise a group of approximately 46 employees.
However, we are not certain that all future retirees agree to be mentors, and the information on upcoming retirements between departments is not symmetrical.
A couple more analyzes are required to determine the exact number of workers to retire by department as well as to calculate how many future mentors are available per department. In Image 2  we can see an example of a query to carry out this analysis. 

### Image 2. Example

![Example](https://github.com/LAURYMEOW/Pewlett-Hackard-Analysis/blob/main/Summary%202.png)

![Example cont](https://github.com/LAURYMEOW/Pewlett-Hackard-Analysis/blob/main/Count_Summary2.png)

In this code, the information of the employees to retire is filtered by department, specifically by Sales and a count is applied to said table to know the number of vacancies. At the same query we can filter the titles to find the position we are interested in reviewing and determine if we have enough potential mentors for that department. Image 3 shows an example where it was searched how many retirees there would be in the sales department with the position of manager. It is recommended to apply it to all departments as well as generate a query that gives us the info of potential mentors by area.  

### Table 4. Sales Department Example: Filter

![Sales department example](https://github.com/LAURYMEOW/Pewlett-Hackard-Analysis/blob/main/Filter_Summary2.png)

In this way we can evaluate more accurately if the company has enough trained personnel to cover the training program for the total number of vacancies.
