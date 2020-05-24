# 高校信息管理系统

实例地址：[高校信息管理系统](http://catchersun.cn:8080/)

框架：

后端：SpringMVC+SpringBoot+MyRedis

前端：JQuery+LayUI

数据库：MySQL

详情请参见实验报告。

如何部署：

- 如果有IntelliJ IDEA等 Java的IDE，直接打开文件，安装配置Maven，然后耐心等待依赖包下载完毕（可更换阿里源加快速度）；将database 中两个SQL文件导入你的数据库，然后就可以RUN这个项目了～

- 部署到服务器：默认打包为Jar包，服务器端运行命令`nohup -jar XXXX.jar &`即可在服务器后台运行。日志写于nohup.out中。

- 默认路径：/

- 默认端口：8080

- 记得改数据库密码，在application.yml中，改成你自己的

  

