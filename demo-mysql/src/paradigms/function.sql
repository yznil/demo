# 数据库函数
# 1. 文本处理函数: CONCAT / TRIM / RTRIM / LTRIM / UPPER / ...
# 2. 日期处理函数: ADDDATE / ADDTIME / CURDATE / CURTIME / DATE / ...
# 3. 数值处理函数: ABS / COS / EXP / MOD / PI / RAND / SIN / SQRT / TAN / ...
# 4. 聚集函数：AVG / COUNT / MAX / MIN / SUM

SELECT
  CONCAT(RTRIM(vend_name), '(', LTRIM(vend_country), ')') as vendor_title
FROM
  vendors
ORDER BY
  vend_name;