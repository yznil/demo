SELECT * FROM products 
  WHERE
    prod_price
      BETWEEN 0 AND 100
      AND prod_price IN (2.5, 10, 35, 55)
      AND prod_price LIKE '%5%'
      AND prod_price REGEXP '.5'
    ORDER BY prod_price DESC
    LIMIT 1,2;