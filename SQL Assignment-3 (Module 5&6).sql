--Assignment-3(module 5&6)

select * from jomato

--1. Create a stored procedure to display the restaurant name, type and cuisine where the table booking is not zero.

select Top 5 *,
	row_number()over (order by Rating desc)
	from jomato

--4. Use the while loop to display the 1 to 50.

--Creating table
create table NumberTable (
Numbers int);

--Initializing variable with 1 
Declare @count int;
set @count=1;

--running while loop
while @count<51
Begin
	Insert into Numbertable(numbers) values(@count)
	set @count=@count+1
end;

select * from NumberTable


--5. Write a query to Create a Top rating view to store the generated top 5 highest rating of restaurants.

Create or alter view Top_5
As
	select Top 5 *,
	Row_number()over(order by Rating desc) as top_5
	from jomato 

select * from Top_5

6. Create a trigger that give an message whenever a new record is inserted