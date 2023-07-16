
--Hackerrank African Cities solutions

SELECT CITY.NAME
FROM CITY
inner join COUNTRY 
on CITY.COUNTRYCODE = COUNTRY.CODE
WHERE CONTINENT ='Africa'

-- Hackerrank Average Population of Each Continent

SELECT COUNTRY.CONTINENT,FLOOR(avg(CITY.POPULATION))
from COUNTRY,CITY
where CITY.COUNTRYCODE = COUNTRY.CODE
group by COUNTRY.CONTINENT

--Hackerrank Ollivander's Inventory Solutions

SELECT Wands.id,Wands_Property.age,Wands.coins_needed,Wands.Power
from Wands
join Wands_Property on (Wands.CODE = Wands_Property.Code)
where Wands_Property.is_evil = 0 and Wands.coins_needed = (Select min(coins_needed)
                                                                     from Wands as X
                                                                     Join Wands_Property as Y
                                                                     ON (X.CODE = Y.CODE)
                                                                     Where X.power = Wands.power and Y.age = Wands_property.age)
order by Wands.Power Desc,Wands_Property.age DESC