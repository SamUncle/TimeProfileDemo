##iOS 学习分享之TimeProfiler基本使用


***

#### 项目配置
 >我们的应用在编译的时候，苹果会给我们生成一份叫做 “项目名.app.dSYM” 的文件，这份文件里保存了我们代码的行数以及我们写的函数的十六进制地址。也就是说，如果我们能拿到这份文件和函数的十六进制地址，我们就能去我们的代码里找到那个函数。

>为了TimeProfiler能去我们的项目里找到对应的函数，所以我们应该为TimeProfiler配置获取这份文件的环境，也就是作如下配置：

**一、配置项目的 Scheme**

>![](https://spark-docs.oss-cn-hangzhou.aliyuncs.com/docs/20181113105752.png)

**二、配置项目的 Project**
![](https://spark-docs.oss-cn-hangzhou.aliyuncs.com/docs/20181113105949.png)

**三、操作步骤**

- 1. 首先找出TimeProfile:请点击 Xcode 的菜单 --> Product --> Profile
![timeProfile](https://spark-docs.oss-cn-hangzhou.aliyuncs.com/docs/20181113095417.png)

- 2. 在左上角选择要调试的应用（请在真机上运行应用，因为模拟器使用的是电脑的 CPU，所以很多时候并没有明显检测出性能问题。）
- 3. 开始监听。
- 4. 查看监听结果。
![运行堆栈信息](https://spark-docs.oss-cn-hangzhou.aliyuncs.com/docs/20181113102112.png)
经过上面的项目配置（**<font face="Times New Roman" size="3" color="#ff0000">  温馨提醒：配置之后，需要运行项目之后方可生效，不要直接用TimeProfile运行监听，否则可能追踪不到耗时代码</font><br />**），我们再重新运行项目，然后按照上面的方式配置TimeProfiler，你就能看到上面的结果。

- 5. 分析

        >1. 由上图我们可以看到比较耗时的操作已经列出来了，我们双击即可进入对应的代码块，很方便的定位到耗时函数，对这些耗时函数我们不要放到主线程，否则会使主线程堵塞。
        >2. 我们双击击AccountViewController viewDidLoad
        ![](https://spark-docs.oss-cn-hangzhou.aliyuncs.com/docs/20181113104531.png)
        > 定位代码如下:可看出该函数耗时占到99.55%的代码，如此找到我们项目中的耗时函数
        ![](https://spark-docs.oss-cn-hangzhou.aliyuncs.com/docs/20181113104932.png)

 
参考资料:   [用 TimeProfiler 揪出那些耗时函数](https://www.jianshu.com/p/0fd670547235)
测试demo:  [测试TimeProfileDemo]()
测试demo运行截图![](https://spark-docs.oss-cn-hangzhou.aliyuncs.com/docs/20181113114312.png)