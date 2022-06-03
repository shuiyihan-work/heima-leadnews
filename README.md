# 黑马头条

​	基于传智黑马视频学习练手项目，仅供参考！！！

​	该项目因其涉及技术面广，开发仿真度高，相对可以作为入门实战项目，视频B站有，涉及知识版权，这里仅有资料和完整项目（时间太久远了，我在慢慢追加和优化文档代码）

友情提示：

​	请不要在面试和毕设中引用该项目，此业务流程和项目标题已被众技术官知晓，新闻推送类软件已经落后市场风口



## 开发环境

开发环境：JDK8+、MySQL 5.7+

编辑器：IntelliJ IDEA 

数据库可视化工具：Navicat或者DataGrip

Redis可视化工具：Another Redis Desktop Manager



## 数据库设计

- leadnews_article  app信息库，主要存储文章信息
- leadnews_user    app用户库，文章的用户信息
- leadnews_comment  文章的评论内容
- leadnews_search app端文章查询的数据存储
- leadnews_Behavior 用户行为库，主要存储用户行为，包括用户的转发，点赞，评论行为等
- leadnews_WeMedia 多媒体库，主要存储多媒体人图文数据统计，账号信息，粉丝相关信息等。
- leadnews_Admin 后台管理库，主要存储后台管理员的信息。
- ~~leadnews_Crawlers 爬虫库，主要存储从网络上爬取的文章信息等。~~（老版本有，新版取消了爬虫相关内容）

## 后端微服务设计

【父项目下分4个公共子项目】：

- heima-leadnews-common : 是整个工程的配置核心，包括所有集成三方框架的配置定义，比如redis、kafka等。除此之外还包括项目每个模块及整个项目的常量定义;
- heima-leadnews-model ：项目中用到的Dto、Pojo、Mapper、Enums定义工程;
- heima-leadnews-utils : 工程公用工具类项目，包含加密/解密、Date、JSON等工具类;
- heima-leadnew-apis : 整个项目微服务暴露的接口的定义项目，按每个模块进行子包拆分;

【多个微服务】：

- heima-leadnews-login：用于实现APP+自媒体端用户的登录与注册功能；
- heima-leadnews-user：用于实现APP端用户中心的功能，比如我的收藏、我的粉丝等功能；
- heima-leadnews-article：用于实现APP端文章的获取与搜索等功能；还包括频道、标签等功能；
- heima-leadnews-behavior：用于实现APP端各类行为数据的上传服务；
- heima-leadnews-quartz：用于封装项目中所有的调度计算任务；
- heima-leadnews-wemedia：用于实现自媒体管理端的功能；
- heima-leadnews-admin：用于实现后台管理系统的功能；
- heima-leadnews-gateway：网关
