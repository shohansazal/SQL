# Writing SQL Statements:

	SQL statements are not case-sensitive. 
	SQL statements can be on one or more lines.
	Keywords cannot be abbreviated or splitacross lines.
	Clauses are usually placed on separate lines.
	Indents are used to enhance readability.
	In iSQL*Plus, SQL statements can optionally be terminated by a semicolon (;).
	Semicolons are required if you execute multiple SQL statements. 


# Column Heading Defaults:

	iSQL*Plus:
	Default heading alignment: Center
	Default heading display: Uppercase
	SQL*Plus:
	Character and Date column headings are left- aligned
	Number column headings are right-aligned
	Default heading display: Uppercase



# Selecting All Columns:

	SELECT *
	FROM   departments;

# Selecting Specific Columns:


	SELECT department_id, location_id
	FROM   departments;


# Arithmetic Expressions:

	Add(+)
	Subtract(-)
	Multiply(*)
	Divide(/)


	SELECT last_name, salary, salary + 300
	FROM   employees;


# Operator Precedence [ Left to Right ]:

	SELECT last_name, salary, 12*salary+100
	FROM   employees;

	SELECT last_name, salary, 12*(salary+100)
	FROM   employees;

# Defining a Null Value:

	A null is a value that is unavailable, unassigned, unknown, or inapplicable.
	A null is not the same as a zero or a blank space.

	SELECT last_name, job_id, salary, commission_pct
	FROM   employees;

# Null Values in Arithmetic Expressions:

	Arithmetic expressions containing a null value evaluate to null.

	SELECT last_name, 12*salary*commission_pct
	FROM   employees;

# Using Column Aliases:

	SELECT last_name AS name, commission_pct comm
	FROM   employees;

	SELECT last_name "Name" , salary*12 "Annual Salary"
	FROM   employees;

# Concatenation Operator:

	Is represented by two vertical bars (||)

	SELECT	last_name||job_id AS "Employees"
	FROM 	employees;

# Literal Character Strings:

	A literal is a character, a number, or a date that is included in the SELECT statement.
	Date and character literal values must be enclosed by single quotation marks.

	SELECT last_name ||' is a '||job_id AS "Employee Details"
	FROM   employees;

# Duplicate Rows:

	SELECT DISTINCT department_id
	FROM   employees;


# Displaying Table Structure:

	DESC[RIBE] tablename;

	       DESC employees;











