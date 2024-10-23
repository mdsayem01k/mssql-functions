# MSSQL Functions

This repository contains a collection of SQL Server functions developed for use with the BlueChipDB database. The functions include:

- **showMessage**: Returns a simple greeting message.
- **squareFunc**: Computes the square of a given integer.
- **addition**: Adds two integers and returns the result.
- **Voters**: Checks voter eligibility based on age and returns an appropriate message.

Each function is tested with example queries for easy reference. This repository serves as a resource for SQL Server function development and can be useful for developers looking to enhance their database operations.

## SQL Code Snippets

```sql
USE BlueChipDB;

-- Function to show a message
CREATE FUNCTION showMessage()
RETURNS varchar(200)
AS
BEGIN
    RETURN 'HELLO';
END;

-- Test the showMessage function
SELECT dbo.showMessage();

-- Function to calculate square of a number
CREATE FUNCTION squareFunc (@num AS int)
RETURNS int
AS 
BEGIN
    RETURN (@num * @num);
END;

-- Test the squareFunc function
SELECT dbo.squareFunc(11);

-- Function to add two numbers
CREATE FUNCTION addition(@num1 AS int, @num2 AS int)
RETURNS int
AS
BEGIN
    RETURN (@num1 + @num2);
END;

-- Test the addition function
SELECT dbo.addition(4, 5);

-- Function to check voter eligibility
CREATE FUNCTION Voters(@age AS int)
RETURNS varchar(100)
AS
BEGIN
    DECLARE @str varchar(100);
    IF @age >= 18
    BEGIN 
        SET @str = 'You are eligible to vote';
    END
    ELSE
    BEGIN
        SET @str = 'You are not eligible to vote';
    END
    RETURN @str;
END;

-- Test the Voters function
SELECT dbo.Voters(17);
