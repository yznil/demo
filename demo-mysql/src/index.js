require('colors');
const fs = require('fs');
const path = require('path');
const mysql = require('mysql');

const connection = mysql.createConnection({
  host               : '127.0.0.1',
  port               : '3306',
  user               : 'root',
  password           : '123456',
  database           : 'crashcourse',
  multipleStatements : true, // 支持执行多条SQL
});
 
connection.connect(); // 连接数据库

const [,, action, subAction] = process.argv;
const paradigmDir = path.join(__dirname, action);
const sqlFiles = fs.readdirSync(paradigmDir).filter(filename => {
  return (!subAction && filename.includes('.sql')) ||
    (subAction && filename.includes(subAction))
});

// 自动执行各个SQL场景
sqlFiles.forEach(filename => {
  const querySQL = fs.readFileSync(path.join(paradigmDir, filename), 'utf-8');

  connection.query(querySQL, function (error, results) {
    if (error) throw error;
  
    console.log(`The ${filename.red} file result is: \n${JSON.stringify(results, null, 2).yellow}`);
  });
});

connection.end((error) => {
  if (error) throw error;

  console.log('关闭数据库连接成功！');
});
