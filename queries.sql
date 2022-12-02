-- write your queries here
--Part 1--
SELECT * FROM owners LEFT JOIN vehicles ON owners.id = vehicles.owner_id;

SELECT owners.first_name, owners.last_name, COUNT(vehicles.owner_id) 
FROM owners JOIN vehicles ON owners.id = vehicles.owner_id 
GROUP BY owners.first_name, owners.last_name 
ORDER BY COUNT(vehicles.owner_id);


SELECT first_name, last_name, ROUND(AVG(price)) as average_price, COUNT(*) 
FROM owners JOIN vehicles ON owners.id = vehicles.owner_id 
GROUP BY owners.first_name, owners.last_name 
HAVING COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000 ORDER BY owners.first_name DESC; 