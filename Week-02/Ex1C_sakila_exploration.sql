/*
a) You can find the actor ID, first name, last name and last update
b) In this, you can find data such as film id, table, title, description, release year, language id, original language, rental duration, rental rate, length, replacement, rating, special features and last update.
c) The film_actor table has both of these categories.
d) Here, you can locate the rental id, rental date, inventory id, customer id, return date, staff id, and last update. I find the information easy to read, due to the clear column titles. 
e) This table includes inventory id, film id, store id and last update. Since the numbers are a bit vague (I have no prior context as to what the IDs in this situation mean), I found the data a little difficult to understand.
f) To understand the names of rented films on a specific date, you would need to use the rental table, the film text table and the inventory table.
*/

SELECT title FROM film_text;
SELECT rental_date FROM rental;
SELECT film_id FROM inventory;