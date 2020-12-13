# 组合查询：将多次查询结果合并
SELECT
  vend_id,
  prod_id,
  prod_name,
  prod_price
FROM
  products
WHERE
  prod_price <= 5
UNION
SELECT
  vend_id,
  prod_id,
  prod_name,
  prod_price
FROM
  products
WHERE
  vend_id IN (1001, 1002)
ORDER BY
  vend_id,
  prod_price;

# 与上面组合查询结果一样
SELECT
  vend_id,
  prod_id,
  prod_name,
  prod_price
FROM
  products
WHERE
  prod_price <= 5
  OR vend_id IN (1001, 1002)
ORDER BY
  vend_id,
  prod_price;