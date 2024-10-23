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
