# 多种条件搜索语句
# where子操作符：=、<>、!=、<、>、<=、>=、BETWEEN、IS NULL、AND、OR、IN、NOT、LIKE
# 通配符：%(多个字符)、_(单个字符)
# 正则表达式：.(任意字符)、|(或)、[](类似IN)、-(指定范围)、\\(转义)、[[:<:]](词的开始)、[[:<:]](词的结尾)、? 等等，具体参照正则表达式
SELECT * FROM products 
  WHERE
    prod_price
      BETWEEN 0 AND 100
      AND prod_price IN (2.5, 10, 35, 55)
      AND prod_price LIKE '%5%'
      AND prod_price REGEXP '.5'
    ORDER BY prod_price DESC
    LIMIT 1,2;