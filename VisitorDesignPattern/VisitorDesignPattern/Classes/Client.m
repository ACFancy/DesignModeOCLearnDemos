//
//  Client.m
//  VisitorDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Client.h"
#import "CommonEmployee.h"
#import "Manager.h"
#import "Visitor.h"

#import "AVisitor.h"
#import "AElement.h"
#import "ObjectStruture.h"
#import "ShowVisitor.h"
#import "TotalVisitor.h"

#import "OldActor.h"
#import "KungFuRole.h"

/*
 访问者模式（Visitor Pattern）是一个相对简单的模式
    封装一些作用于某种数据结构中的各元素的操作，它可以在不改变数据结构的前提下定义作用于这些元素的新的操作
 看了这个通用类图，大家可能要犯迷糊了，这里怎么有一个ObjectStruture类呢？你刚刚举的例子怎么就没有呢？真没有吗？我们不是定义了一个List了吗？它中间的元素是我们一个一个手动增加上去的，这就是一个ObjectStruture，我们来看这几个角色的职责。
 ● Visitor——抽象访问者
    抽象类或者接口，声明访问者可以访问哪些元素，具体到程序中就是visit方法的参数定义哪些对象是可以被访问的。
 ● ConcreteVisitor——具体访问者
    它影响访问者访问到一个类后该怎么干，要做什么事情。
 ● Element——抽象元素
    接口或者抽象类，声明接受哪一类访问者访问，程序上是通过accept方法中的参数来定义的。
    抽象元素有两类方法：一是本身的业务逻辑，也就是元素作为一个业务处理单元必须完成的职责；另外一个是允许哪一个访问者来访问
 ● ConcreteElement——具体元素
    实现accept方法，通常是visitor.visit(this)，基本上都形成了一种模式了。
 ● ObjectStruture——结构对象
    元素产生者，一般容纳在多个不同类、不同接口的容器，如List、Set、Map等，在项目中，一般很少抽象出这个角色。
 大家可以这样理解访问者模式，我作为一个访客（Visitor）到朋友家（Visited Class）去拜访，朋友之间聊聊天，喝喝酒，再相互吹捧吹捧，炫耀炫耀，这都正常。聊天的时候，朋友告诉我，他今年加官晋爵了，工资也涨了30%，准备再买套房子，那我就在心里盘算（Visitor-self-method）“你这么有钱，我去年要借10万你都不借”，我根据朋友的信息，执行了自己的一个方法
 访问者模式的优点
 ● 符合单一职责原则
    具体元素角色也就是Employee抽象类的两个子类负责数据的加载，而Visitor类则负责报表的展现，两个不同的职责非常明确地分离开来，各自演绎变化。
 ● 优秀的扩展性
    由于职责分开，继续增加对数据的操作是非常快捷的，例如，现在要增加一份给大老板的报表，这份报表格式又有所不同，直接在Visitor中增加一个方法，传递数据后进行整理打印。
 ● 灵活性非常高
    例如，数据汇总，就以刚刚我们说的Employee的例子，如果我现在要统计所有员工的工资之和，怎么计算？把所有人的工资for循环加一遍？是个办法，那我再提个问题，员工工资×1.2，部门经理×1.4，总经理×1.8，然后把这些工资加起来，你怎么处理？1.2，1.4，1.8是什么？不是吧？！你没看到领导不论什么时候都比你拿得多，工资奖金就不说了，就是过节发个慰问券也比你多，就是这个系数在作祟。我们继续说你想怎么统计？使用for循环，然后使用instanceof来判断是员工还是经理？这可以解决，但不是个好办法，好办法是通过访问者模式来实现，把数据扔给访问者，由访问者来进行统计计算。
 访问者模式的缺点
 ● 具体元素对访问者公布细节
    访问者要访问一个类就必然要求这个类公布一些方法和数据，也就是说访问者关注了其他类的内部细节，这是迪米特法则所不建议的。
 ● 具体元素变更比较困难
    具体元素角色的增加、删除、修改都是比较困难的，就上面那个例子，你想想，你要是想增加一个成员变量，如年龄age，Visitor就需要修改，如果Visitor是一个还好办，多个呢？业务逻辑再复杂点呢？
 ● 违背了依赖倒置转原则
    访问者依赖的是具体元素，而不是抽象元素，这破坏了依赖倒置原则，特别是在面向对象的编程中，抛弃了对接口的依赖，而直接依赖实现类，扩展比较难。
 访问者模式的使用场景
 ● 一个对象结构包含很多类对象，它们有不同的接口，而你想对这些对象实施一些依赖于其具体类的操作，也就说是用迭代器模式已经不能胜任的情景。
 ● 需要对一个对象结构中的对象进行很多不同并且不相关的操作，而你想避免让这些操作“污染”这些对象的类。
 
 总结一下，在这种地方你一定要考虑使用访问者模式：业务规则要求遍历多个不同的对象。这本身也是访问者模式出发点，迭代器模式只能访问同类或同接口的数据（当然了，如果你使用instanceof，那么能访问所有的数据，这没有争论），而访问者模式是对迭代器模式的扩充，可以遍历不同的对象，然后执行不同的操作，也就是针对访问的对象不同，执行不同的操作。访问者模式还有一个用途，就是充当拦截器（Interceptor）角色，这个我们将在混编模式中讲解
 访问者模式的扩展
    访问者模式是经常用到的模式，虽然你不注意，有可能你起的名字也不是什么Visitor，但是它确实是非常容易使用到的，在这里我提出两个扩展的功能供大家参考。
 ● 统计功能
    在例子中我们也提到访问者的统计功能，汇总和报表是金融类企业非常常用的功能，基本上都是一堆的计算公式，然后出一个报表，很多项目采用了数据库的存储过程来实现，我不是很推荐这种方式，除非海量数据处理，一个晚上要批处理上亿、几十亿条的数据，除了存储过程来处理还没有其他办法，你要是用应用服务器来处理，连接数据库的网络就是处于100%占用状态，一个晚上也未必能处理完这批数据！除了这种海量数据外，我建议数据统计和报表的批处理通过访问者模式来处理会比较简单
 ● 多个访问者
    在实际的项目中，一个对象，多个访问者的情况非常多。其实我们上面例子就应该是两个访问者，为什么呢？报表分两种：第一种是展示表，通过数据库查询，把结果展示出来，这个就类似于我们的那个列表；第二种是汇总表，这个是需要通过模型或者公式计算出来的，一般都是批处理结果，这个类似于我们计算工资总额，这两种报表格式是对同一堆数据的两种处理方式。从程序上看，一个类就有个不同的访问者了
 ● 双分派
    说到访问者模式就不得不提一下双分派（double dispatch）问题，什么是双分派呢？我们先来解释一下什么是单分派（single dispatch）和多分派（multiple dispatch），单分派语言处理一个操作是根据请求者的名称和接收到的参数决定的，在Java中有静态绑定和动态绑定之说，它的实现是依据重载（overload）和覆写（override）实现的，我们来说一个简单的例子。
    看到没？不管演员类和角色类怎么变化，我们都能够找到期望的方法运行，这就是双反派。双分派意味着得到执行的操作决定于请求的种类和两个接收者的类型，它是多分派的一个特例。从这里也可以看到Java是一个支持双分派的单分派语言。
 - 重载- 方法名相同，参数不同
 - 重写- 方法名和参数都相同
 
 最佳实践
    访问者模式是一种集中规整模式，特别适用于大规模重构的项目，在这一个阶段需求已经非常清晰，原系统的功能点也已经明确，通过访问者模式可以很容易把一些功能进行梳理，达到最终目的——功能集中化，如一个统一的报表运算、UI展现等，我们还可以与其他模式混编建立一套自己的过滤器或者拦截器，请大家参考混编模式的相关章节。
 */

@implementation Client

+ (void)execute
{
//    for (Employee *empolyee in [self mockEmployee]) {
//        [empolyee report];
//    }
    
    /*
     抽象员工类有3个变动：
     
     ● 删除了report方法。
     
     ● 增加了accept方法，接受访问者的访问。
     
     ● 删除了getOtherInfo方法。它的实现由访问者来处理，因为访问者对被访问的对象是“心知肚明”的，非常了解被访问者。
     
     ● 第一，通过循环遍历所有元素。
     
     ● 第二，每个员工对象都定义了一个访问者。
     
     ● 第三，员工对象把自己作为一个参数调用访问者visit方法。
     
     ● 第四，访问者调用自己内部的计算逻辑，计算出相应的数据和表格元素。
     
     ● 第五，访问者打印出报表和数据。
     事情的经过就是这个样子。那我们再来看看上面提到的数据和报表格式都会改变的情况。首先是数据的改变，数据改了当然都要改，说不上两个方案有什么优劣；其次是报表格式的修改，这个方案绝对是有优势的，我只要再产生一个IVisitor的实现类就可以产生一个新的报表格式，而其他的类都不用修改，如果你用Spring开发，那就更好了，在Spring的配置文件中使用的是接口注入，我只要把配置文件中的 ref修改一下就行了，其他的都不用修改了！这就是访问者模式的优势所在。
     */
//    Visitor *visitor = [Visitor new];
//    for (Employee *em in [self mockEmployee]) {
//        [em accept:visitor];
//    }
    
    /*
     通用类例子
     通过增加访问者，只要是具体元素就非常容易访问，对元素的遍历就更加容易了，甭管它是什么对象，只要它在一个容器中，都可以通过访问者来访问，任务集中化。这就是访问者模式。
     */
//    AVisitor *avisitor = [AVisitor new];
//    AElement *element;
//    for (NSInteger i = 0; i < 10; i++) {
//        element = [ObjectStruture createElement];
//        [element accept:avisitor];
//    }
    
    /*
     统计功能
     */
//    Visitor *visitor = [Visitor new];
//    for (Employee *em in [self mockEmployee]) {
//        [em accept:visitor];
//    }
//    NSLog(@"%ld", [visitor fetchTotalSalary]);
    
    /*
     多个访问者
     */
//    id<IShowVisitor> showVisitor = [ShowVisitor new];
//    id<ITotalVisitor> totalVisitor = [TotalVisitor new];
//
//    for (Employee *em in [self mockEmployee]) {
//        [em accept:showVisitor];
//        [em accept:totalVisitor];
//    }
//
//    [showVisitor report];
//    [totalVisitor totalSalary];
    
    /*
     双分发
     JAVA中，重载在编译器期就决定了要调用哪个方法，它是根据role的表面类型而决定调用act(Role role)方法，这是静态绑定；而Actor的执行方法act则是由其实际类型决定的，这是动态绑定。
     */
//    AbsActor *actor = [OldActor new];
//    id<Role> role = [KungFuRole new];
//
//    [actor act:role];
//    [actor actKongFu:[KungFuRole new]];
    /*
     一个演员可以扮演很多角色，我们的系统要适应这种变化，也就是根据演员、角色两个对象类型，完成不同的操作任务，该如何实现呢？很简单，我们让访问者模式上场就可以解决该问题，只要把角色类稍稍修改即可
     */
    AbsActor *actor = [OldActor new];
    id<Role> role = [KungFuRole new];
    [role accept:actor];
}

#pragma mark - Private Methods
+ (NSArray *)mockEmployee
{
    NSMutableArray *array = [NSMutableArray array];
    
    CommonEmployee *zhansan = [CommonEmployee new];
    [zhansan setJob:@"编写Java程序，绝对的蓝领、苦工加搬运工"];
    [zhansan setSex:MALE];
    [zhansan setSalary:1800];
    [zhansan setName:@"张三"];
    [array addObject:zhansan];
    
    CommonEmployee *lisi = [CommonEmployee new];
    [lisi setJob:@"页面美工，审美素质太不流行了！"];
    [lisi setName:@"李四"];
    [lisi setSex:FEMALE];
    [lisi setSalary:1800];
    [array addObject:lisi];
    
    Manager *wangwu = [Manager new];
    [wangwu setName:@"王五"];
    [wangwu setPerformance:@"基本上是负值，但是我会拍马屁呀"];
    [wangwu setSex:MALE];
    [wangwu setSalary:187500];
    [array addObject:wangwu];
    
    return array.copy;
}

@end
