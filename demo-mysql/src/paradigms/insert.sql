-- 数据插入
-- 插入多条数据
INSERT INTO
  customers(
    cust_name,
    cust_address,
    cust_city,
    cust_state,
    cust_zip,
    cust_country
  )
VALUES
  (
    'Pep	E. LaPew',
    '100 Main Street',
    'Los Angeles',
    'CA',
    '90046',
    'USA'
  ),
  (
    'M. Martian',
    '42 Galaxy Way',
    'New York',
    'NY',
    '11213',
    'USA'
  );

-- 将查询结果插入表中
INSERT INTO
  customers(
    cust_contact,
    cust_email,
    cust_name,
    cust_address,
    cust_city,
    cust_state,
    cust_zip,
    cust_country
  )
SELECT
  cust_contact,
  cust_email,
  cust_name,
  cust_address,
  cust_city,
  cust_state,
  cust_zip,
  cust_country
FROM
  custnew;