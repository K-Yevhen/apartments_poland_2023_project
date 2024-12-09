SELECT 
  id,
  city,
  squareMeters,
  rooms,
  buildYear,
  price,
  (price / squareMeters) AS price_per_square_meter
FROM (
  SELECT city, id, squareMeters, rooms, buildYear, price 
  FROM `white-outlook-439713-h9.apartments_poland_2024_project.apartments_month_01`
  UNION ALL
  SELECT city, id, squareMeters, rooms, buildYear, price 
  FROM `white-outlook-439713-h9.apartments_poland_2024_project.apartments_month_02`
  UNION ALL
  SELECT city, id, squareMeters, rooms, buildYear, price 
  FROM `white-outlook-439713-h9.apartments_poland_2024_project.apartments_month_03`
  UNION ALL
  SELECT city, id, squareMeters, rooms, buildYear, price 
  FROM `white-outlook-439713-h9.apartments_poland_2024_project.apartments_month_04`
  UNION ALL
  SELECT city, id, squareMeters, rooms, buildYear, price 
  FROM `white-outlook-439713-h9.apartments_poland_2024_project.apartments_month_05`
  UNION ALL
  SELECT city, id, squareMeters, rooms, buildYear, price 
  FROM `white-outlook-439713-h9.apartments_poland_2024_project.apartments_month_06`
)
WHERE city = 'krakow' AND squareMeters > 0
ORDER BY price;