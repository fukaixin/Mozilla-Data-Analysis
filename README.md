# fkx_mysql
1.将数据导入数据库，表名为`2011_mozilla_activity_level2`,列名信息如图"2011_mozilla_activity_level1列名信息截图"
2.调用time_submit.sql创建新表，属性列为时间Date，和统计时间作为的提交量Submit
3.调用user_submit.sql把时间，和用户与提交量数据导入新表中
4.安装Rstudio教程 链接 https://www.rstudio.com/products/rstudio/download/
5.R连接数据库设置使用MySQL的ODB连接 http://www.dataguru.cn/thread-289411-1-1.html mysql-connector-odbc 
6.因为R不识别数据库中日期类型，先用命令 install.packages("xts")安装xts包；
7.执行time_Submit折线图.R文件画时间与提交量关系图
8.执行user_submit文件画用户与提交量关系直方图

