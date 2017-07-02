# hue-learning

# 环境

    CDH 5.11.0
    HUE 3.12 （自己编译的，注意如果在其他机器编译好拷贝部署的话目录和文件夹名称都不能变，否则会出现莫名其妙的问题，代码里面很多路径都写的是绝对路径）

# hue的配置文件

    pseudo-distributed.ini 供参考

# 元数据存储在mysql的表结构

    yc.sql，直接mysql -uuser -ppass hue < yc.sql
    然后在配置文件中配置账号密码数据库就行
    
# 配置文件解析

> 主要是和各组件的集成，包括spark/hdfs/yarn/hive/impala/kudu/kylin/oozie/zookeeper/mysql/oracle/solr等等
> Dashborad的使用和集成，主要和solr以及impala/mysql/kylin/kudu的集成，hive查询太慢，不太建议用hive

## integrate with spark

### hue中的配置

### 界面展示（主要是spark代码的执行以及spark任务的提交）

## integrate with hdfs






















