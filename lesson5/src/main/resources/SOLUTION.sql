
SELECT * from payment WHERE amount>=500;

SELECT * from student WHERE DATEADD(YEAR, -20, CURRENT_DATE) > birthday;;

SELECT * from student WHERE groupnumber=10 AND DATEADD(YEAR, -20, CURRENT_DATE) < birthday;;

SELECT * from student WHERE name="Mike" OR groupnumber IN (4, 5, 6);

SELECT * from payment WHERE payment_date > DATEADD(MONTH, -8, CURRENT_DATE);

SELECT * from student WHERE name LIKE 'A%';

SELECT * from student WHERE name="Roxi" AND groupnumber=4 OR name="Tallie" AND groupnumber=9;
