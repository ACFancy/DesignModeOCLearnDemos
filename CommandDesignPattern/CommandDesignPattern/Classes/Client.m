//
//  Client.m
//  CommandDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Client.h"
#import "RequirementGroup.h"
#import "PageGroup.h"
#import "CodeGroup.h"
#import "AddRequirementCommand.h"
#import "DeletePageCommand.h"
#import "CancelDeletePageCommand.h"
#import "Invoker.h"
#import "ConcreteReceiver1.h"
#import "ConcreteReceiver2.h"
#import "ConcreteCommand1.h"
#import "ConcreteCommand2.h"
#import "AInvoker.h"

/*
 这是一个挺好的方案，但是客户的命令是一个String类型的，这有非常多的变化，仅仅通过一个字符串来传递命令并不是一个非常好的方案，因为在系统设计中，字符串没有约束力，根据字符串判断相关的业务逻辑不是一个优秀的解决方案。那怎么才是一个优秀的方案呢？解决方案是：对客户发出的命令进行封装，每个命令是一个对象，避免客户、负责人、组员之间的交流误差，封装后的结果就是客户只要说一个命令，我的项目组就立刻开始启动，不用思考、解析命令字符串
 ● Command抽象类：客户发给我们的命令，定义三个工作组的成员变量，供子类使用；定义一个抽象方法execute，由子类来实现。
 ● Invoker实现类：项目接头负责人，setComand接收客户发给我们的命令，action方法是执行客户的命令（方法名写成是action，与command的execute区分开，避免混淆）。
 Command抽象类可以有N个子类，如增加一个功能命令（AddFunCommand），删除一份需求命令（DeleteRequirementCommand）等，这里就不再描述了，只要是由客户产生、时常性的行为都可以定义为一个命令，其实现类都比较简单，读者可以自行扩展。
 命令模式
    命令模式是一个高内聚的模式, 将一个请求封装成一个对象，从而让你使用不同的请求把客户端参数化，对请求排队或者记录请求日志，可以提供命令的撤销和恢复功能
 命令模式的通用类图，三个角色
 ● Receive接收者角色
    该角色就是干活的角色，命令传递到这里是应该被执行的，具体到我们上面的例子中就是Group的三个实现类。
 ● Command命令角色
    需要执行的所有命令都在这里声明。
 ● Invoker调用者角色
    接收到命令，并执行命令。在例子中，我（项目经理）就是这个角色。
    命令模式比较简单，但是在项目中非常频繁地使用，因为它的封装性非常好，把请求方（Invoker）和执行方（Receiver）分开了，扩展性也有很好的保障，通用代码比较简单。
 命令模式的优点
    ● 类间解耦
        调用者角色与接收者角色之间没有任何依赖关系，调用者实现功能时只需调用Command抽象类的execute方法就可以，不需要了解到底是哪个接收者执行。
    ● 可扩展性
        Command的子类可以非常容易地扩展，而调用者Invoker和高层次的模块Client不产生严重的代码耦合
    ● 命令模式结合其他模式会更优秀
        命令模式可以结合责任链模式，实现命令族解析任务；结合模板方法模式，则可以减少Command子类的膨胀问题。
 命令模式的缺点
    命令模式也是有缺点的，请看Command的子类：如果有N个命令，问题就出来了，Command的子类就可不是几个，而是N个，这个类膨胀得非常大，这个就需要读者在项目中慎重考虑使用。
 命令模式的使用场景
    只要你认为是命令的地方就可以采用命令模式，例如，在GUI开发中，一个按钮的点击是一个命令，可以采用命令模式；模拟DOS命令的时候，当然也要采用命令模式；触发－反馈机制的处理等。
 反悔问题
    1.结合备忘录模式还原最后状态，该方法适合接收者为状态的变更情况，而不适合事件处理
    2.通过增加一个新的命令，实现事件的回滚
 我们这样思考，反命令也是一个命令，那就是Command的一个子类，它实现的功能就是恢复刚刚删除的页面，然后我们再思考，谁能恢复删除的页面呢？当然是页面组了，于是作为接收者的页面组必须还有一个方法恢复最后删除的页面，也就是日志的回滚机制了，指定一个页面，回滚回去
 最佳实践
 各位读者可能已经发觉了这样的问题：在我们旅行社的例子中，我们的Receiver角色（也就是Group的三个实现类）并没有暴露给Client，而在通用的类图和源码中却出现了Client类对Receiver角色的依赖，这是为什么呢？
 
 如果你发现了这个问题，则说明你阅读得非常仔细，好习惯！每一个模式到实际应用的时候都有一些变形，命令模式的Receiver在实际应用中一般都会被封装掉（除非非常必要，例如撤销处理），那是因为在项目中：约定的优先级最高，每一个命令是对一个或多个Receiver的封装，我们可以在项目中通过有意义的类名或命令名处理命令角色和接收者角色的耦合关系（这就是约定），减少高层模块（Client类）对低层模块（Receiver角色类）的依赖关系，提高系统整体的稳定性。因此，建议大家在实际的项目开发时采用封闭Receiver的方式（当然了，仁者见仁，智者见智），减少Client对Reciver的依赖，该方案只是对Commandd抽象类及其子类有一定的修改，
 */

@implementation Client

+ (void)execute
{
//    Group *rg = [RequirementGroup new];
//    [rg find];
//    [rg add];
//    [rg plan];
//
//    Group *pg = [PageGroup new];
//    [pg find];
//    [pg deleteSome];
//    [pg plan];
//
//    Group *cg = [CodeGroup new];
//    [cg find];
//    [cg change];
    
//    Invoker *invoker = [Invoker new];
////    AddRequirementCommand *addRequireCommand = [AddRequirementCommand new];
////    [invoker updateCommand:addRequireCommand];
////    [invoker action];
//
//    //只修改了这么多，是不是很简单，而且客户也不用知道到底由谁来修改，高内聚的要求体现出来了，这就是命令模式。
//    DeletePageCommand *deletePageCommand = [DeletePageCommand new];
//    [invoker updateCommand:deletePageCommand];
//    [invoker action];
//
//    //然后就是用Invoker进行调用了，客户选择了执行这个撤销动作，就可以进行撤销操作，该示意代码确实比较简单，真正实现起来那是异常复杂的，为什么呢？事务日志处理是非常繁琐的处理机制，想想数据库的日志处理吧，你就能想象出这个日志有多复杂！
//    CancelDeletePageCommand *cancelDeletePageCommand = [CancelDeletePageCommand new];
//    [invoker updateCommand:cancelDeletePageCommand];
//    [invoker action];
    
    //首先声明调用者Invoker
    AInvoker *invoker = [AInvoker new];
//
//    //定义一个发送给接收者的命令,定义接收者
//    ConcreteCommand1 *command1 = [[ConcreteCommand1 alloc] initWithReceiver:[ConcreteReceiver1 new]];
//    //把命令交给调用者去执行
//    [invoker updateCommand:command1];
//    [invoker action];
//
//    //定义一个发送给接收者的命令,定义接收者
//    ConcreteCommand2 *command2 = [[ConcreteCommand2 alloc] initWithReceiver:[ConcreteReceiver2 new]];
//    //把命令交给调用者去执行
//    [invoker updateCommand:command2];
//    [invoker action];
    
    //这确实简化了很多，每个命令完成单一的职责，而不是根据接收者的不同完成不同的职责。在高层模块的调用时就不用考虑接收者是谁的问题
    //高层次的模块不需要知道接收者，Perfect!
    ConcreteCommand1 *command1 = [ConcreteCommand1 new];
    [invoker updateCommand:command1];
    [invoker action];
    
}

@end
