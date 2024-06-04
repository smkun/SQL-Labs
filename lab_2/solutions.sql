--find all airports that orginiate fron NYC
SELECT id FROM airports WHERE city = 'New York';

--find all destination airpports in Paris
SELECT id FROM airports WHERE city = 'Paris';

-- Find out how many routes originate from New York
SELECT COUNT(*) AS routes_from_new_york
FROM routes r
JOIN airports a ON r.origin_id = a.id
WHERE a.city = 'New York';

--Find out how many routes have destinations in Paris 
SELECT COUNT(*) AS routes_to_paris
FROM routes r
JOIN airports a ON r.dest_id = a.id
WHERE a.city = 'Paris';

--Combine the above steps to find out how many routes originate from New York and land in Paris
SELECT COUNT(*) AS flights_count
FROM routes r
JOIN airports AS origin ON r.origin_id = origin.id
JOIN airports AS destination ON r.dest_id = destination.id
WHERE origin.city = 'New York' AND destination.city = 'Paris';

--Which airlines travel from NYC to Paris
SELECT COUNT(*) AS flights_count
FROM routes r
JOIN airports AS origin ON r.origin_id = origin.id
JOIN airports AS destination ON r.dest_id = destination.id
WHERE origin.city = 'New York' AND destination.city = 'Paris';

--Find all the flights that leave NYC and give a list of how many go to each destination city
SELECT destination.city, COUNT(*) AS flights_count
FROM routes r
JOIN airports AS origin ON r.origin_id = origin.id
JOIN airports AS destination ON r.dest_id = destination.id
WHERE origin.city = 'New York'
GROUP BY destination.city
ORDER BY flights_count DESC;
