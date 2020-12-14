-- 数据更新
UPDATE
  IGNORE customers -- IGNORE关键字: 即使发生错误，也继续进行更新
SET
  cust_name = 'Zhi Nian',
  cust_email = 'zhinian@gmail.com',
  cust_contact = NULL -- 删除某项数据
WHERE
  cust_id = 10006;