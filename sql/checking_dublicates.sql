SELECT 
  city,
  price,
  squareMeters,
  buildYear,
  id,
  COUNT(*) AS duplicate_count
FROM `white-outlook-439713-h9.apartments_poland_2024_project.apartments_month_01`
WHERE city = 'krakow'
GROUP BY city, price, squareMeters, buildYear, id
HAVING COUNT(*) > 1;