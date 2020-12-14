-- 存储过程（自定义的数据库函数）
-- 定义存储过程
CREATE PROCEDURE ordertotal(
  IN onumber INT,
  OUT ototal DECIMAL(8,2)
) BEGIN
  SELECT
    SUM(item_price * quantity)
  FROM
    orderitems 
  WHERE
    order_num = onumber
  INTO
    ototal;
END;

-- 使用存储过程，Mysql变量必须以 @ 开头
CALL ordertotal(20005, @total);

-- 查看变量
SELECT @total;

-- 废弃存储过程
DROP PROCEDURE ordertotal;

-- 查看存储过程功能
SHOW CREATE PROCEDURE ordertotal;
