-- 复杂查询
-- 1. 等值联结（内部联结）
SELECT
  vend_name,
  prod_name,
  prod_price
FROM
  vendors,
  products
WHERE
  vendors.vend_id = products.vend_id;

-- 2. 等值联结的另外一种写法（内部联结）
SELECT
  vend_name,
  prod_name,
  prod_price
FROM
  vendors
  INNER JOIN products ON vendors.vend_id = products.vend_id;

-- 3. 自联结
SELECT
  p1.prod_id,
  p1.prod_name
FROM
  products AS p1,
  products AS p2
WHERE
  p1.vend_id = p2.vend_id
  AND p2.prod_id = 'DTNTR';

-- 4. 外部联结，分为左右联结查询，以左 / 右表为基准表进行查询
SELECT
  customers.cust_id,
  customers.cust_name,
  orders.order_num
FROM
  customers
  LEFT OUTER JOIN orders ON customers.cust_id = orders.cust_id;

SELECT
  customers.cust_id,
  customers.cust_name,
  orders.order_num
FROM
  customers
  RIGHT OUTER JOIN orders ON customers.cust_id = orders.cust_id;