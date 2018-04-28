/********************
-- author: wangxing
-- date: 2018.4.17
********************/

# 数据库：database
show databases;

# 数据库管理系统：DataBase Manage System(DBMS)，如Microsoft Access, Microsoft SQL Server, MySQL, Oracle和IBM DB2等

# 表：table
show tables;

# 列：column
# 行：row

# 主键：primary key

/** 连接到MySQL
　* 格式： mysql -h主机地址 -u用户名 -p用户密码
           mysql -h 主机地址 -u 用户名 -p用户密码
    注意：-p与用户密码间不能有空格！
   
  * 连接到本机上的MySQL
		mysql -u root -p
		mysql -u root -p123456
		mysql -h localhost -u root -p123456

  * 连接到远程主机上的MySQL
		mysql -h 192.168.1.10 -u root -p123456
  */

/** 退出MySQL
　* 格式：exit（回车）
  */
  
/** 设置or修改登录密码
  * 格式：mysqladmin -u用户名 -p旧密码 password新密码
          mysqladmin -u 用户名 -p旧密码 password 新密码
    注意：-p与用户密码间不能有空格！
  
  * 添加密码
		mysqladmin -u root -password 123456
  * 修改密码
		mysqladmin -u root -p123456 password abc123
*/

