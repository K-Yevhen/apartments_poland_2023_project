SELECT DISTINCT 
  id,
  city,
  buildYear,
  squareMeters,
  rooms,
  price,
  (price / squareMeters) AS price_per_square_meter
FROM `white-outlook-439713-h9.apartments_poland_2024_project.apartments_krakow_6month`
ORDER BY price;