/* Simple command execution */

/*
 The below commands will show all databases and proceed
 with switching to classicmodels set.
*/

show databases;
use classicmodels;

/* SELECT USAGE */

select firstname, lastname, jobtitle
from employees;

select *
from employees;


/* ORDER BY ASC AND DESC */

Select contactLastName, contactFirstName
From customers
ORDER BY contactLastName;

Select contactLastName, contactFirstName 
From customers 
ORDER BY contactLastName DESC;

