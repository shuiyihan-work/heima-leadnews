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

### 模块划分

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

### 开发规范

#### 开发原则

- 自顶向下的设计原则：功能应该从表现层分析再到控制层、服务层、持久层逐层设计
- 自底向上的开发原则：上层需调用下层，因此开发应从底层向上层逐层开发

项目中开发的层次次序参考DB->中间件->持久层->服务层->控制层

- 单一职责的开发原则：类或者方法提供的功能应该单一明确，特别越底层越应单一职责，以便维护

项目中Mapper方法必须功能单一，参数明确，拒绝两种以上的持久逻辑使用同一个Mapper方法

- 依赖倒置的开发原则：上层依赖下层，是依赖下层接口，并不是依赖下层的实现

项目中每层都是通过接口调用Controller->Service->Mapper

#### 开发步骤

- 明确类定义：明确哪些是重用类，哪些是需要新增的类
- 明确主键规则：确认操作表的ID生成规则，自增或id_work
- ControllerApi定义：定义接口
- Mapper实现:使用mybatis-plus封装的方法还是自定义mapper映射
- Service实现：可用通过时序图帮助我们梳理实现逻辑
- Controller实现：简单的Service层调用
- 单元测试或接口测试或前端直接联调测试

#### 接口版本规范说明

随着业务的复杂，同一个接口可能出现多个版本，为了方便后期切换和AB测试，需要定义接口的版本号

- 在某一个微服务下访问controller的时候在包名下加一个版本号,如下

```properties
com.heima.article.controller.v1
```



- 在访问具体的接口方法的url映射的时候也应该加上版本说明，如下：



```java
@RequestMapping("/api/v1/article")
```
