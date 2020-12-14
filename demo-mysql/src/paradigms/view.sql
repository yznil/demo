-- 视图（数据查询过程的中间存储变量）
CREATE VIEW productcustomers AS
SELECT
  cust_name,
  cust_contact,
  prod_id
FROM
  customers,
  orders,
  orderitems
WHERE
  customers.cust_id = orders.cust_id
  AND orderitems.order_num = orders.order_num;

-- 查看视图结果
SELECT * FROM productcustomers WHERE prod_id = 'TNT2';

-- 删除视图
DROP VIEW productcustomers;

-- 建议不要更新视图!!!