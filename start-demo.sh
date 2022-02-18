#!/bin/bash
#表名
table_name="account_bill_diamond"
#表时间字段
table_time_col="createTime"
#月分表
table_time_type="month"
#是否开启最近数据同步到 新表 *_latest
table_time_latest="true"
#同步多久之前的数据到 新表 *_latest
table_time_lday="180"

mysql_url="jdbc:mysql://192.168.2.18:3306/wealth?useUnicode=true&characterEncoding=utf-8&useSSL=false"
mysql_name="bobo"
mysql_pwd="Ddkj@2019"

java -Dspring.datasource.url=$mysql_url -Dspring.datasource.username=$mysql_name -Dspring.datasource.password=$mysql_pwd -Dtable.name=$table_name -Dtable.time.col=$table_time_col -Dtable.time.type=$table_time_type -Dtable.time.latest=$table_time_latest -Dtable.time.lday=$table_time_lday -jar data-syn.jar
