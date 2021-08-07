# Pewlett-Hackard-Analysis

## Overview
This project emphasized our ability to use two new tools in better understanding the relationships between multiple tables of numerous rows and columns of data. The first introduction that was made was within Quick DBD, a free online resource where we were able to create tables and join them based on similiar columns. We were able to then use this diagram to transition and begin to code within Pg Admin, a relationship databse that brought our tables and data to life in the form of csv files. By using primary and foreign keys different variations of the data in multiple tables became possible, and this led to the creation and breakdown of employees at Pewlett-Hackard who were nearing retirement broekn down by department. 


## Development Enviornment
  - Pg Admin 
        - Wrote language within queries 
        - Developed tables
        - Created joins between tables
  - Quick DBD
        - Formation of tables (visuals)
        - Labeling primary and foreign keys based on their relationships

## Analysis & Results
  - Analysis 
      - Our code below was able to generate the first deliverable, a lits of employees nearing retirement born between 1952 and 1955. However, an interestinf thing about this table we created is that there were at times multiple employees with more than one entry due to department changes within the orginization. 
          - SELECT e.emp_no,
            e.first_name,
            e.last_name, 
            ti.title,
            de.from_date,
            de.to_date
            -- INTO retirment_titles
            FROM employees as e
            INNER JOIN titles as ti 
            ON (e.emp_no = ti.emp_no)
            INNER JOIN dept_emp as de
            ON (e.emp_no = de.emp_no)
            WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
            ORDER by e.emp_no;
          - https://github.com/evankihn/Pewlett-Hackard-Analysis/files/6948567/reitrement_titles.csv
    
      - After this first step, we used a distinct to retireve the first occurance for each employee and to rid our data of any duplicates. Our second deliverable required us to develop a mentorship list to get an idea of potential retirees who can support the next hiring incline once they leave for retirement. The csv file of the data is linked below 
         - https://github.com/evankihn/Pewlett-Hackard-Analysis/files/6948570/mentorship_eligibility.csv
    
## Summary
As the silver tsunami approaches, the number of retirement ready employees at Pewlett Hackard definitely will be able to provide enough mentoring to the next generation. One aspect that I think is underrated is that a lot of these employees nearing the end of their careers have been able to serve in multiple departments throughout their time working at the company. While this caused a bit of a slip up in the cleaning of our data, what also exists are employees who know more than just what one role takes in a giant orginization. 
        