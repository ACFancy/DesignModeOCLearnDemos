//
//  Client.m
//  ChainOfResponsibilityDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Client.h"
#import "Father.h"
#import "Husband.h"
#import "Son.h"
#import "Women.h"
#import "HFather.h"
#import "HHusband.h"
#import "HSon.h"
#import "ConcreteHandler1.h"
#import "ConcreteHandler2.h"
#import "ConcreteHandler3.h"
#import "ARequest.h"
/*
责任链模式(关键在搭建链条)
    使多个对象都有机会处理请求，从而避免了请求的发送者和接受者之间的耦合关系。将这些对象连成一条链，并沿着这条链传递该请求，直到有对象处理它为止。
    责任链模式的重点是在“链”上，由一条链去处理相似的请求在链中决定谁来处理这个请求，并返回相应的结果
责任链模式的优点
    责任链模式非常显著的优点是将请求和处理分开。请求者可以不用知道是谁处理的，处理者可以不用知道请求的全貌(例如在J2EE项目开发中，可以剥离出无状态Bean由责任链处理），两者解耦，提高系统的灵活性
责任链模式的缺点
    1.是性能问题，每个请求都是从链头遍历到链尾，特别是在链比较长的时候，性能是一个非常大的问题
    2.是调试不很方便，特别是链条比较长，环节比较多的时候，由于采用了类似递归的方式，调试的时候逻辑可能比较复杂
 责任链模式的注意事项
    链中节点数量需要控制，避免出现超长链的情况，一般的做法是在Handler中设置一个最大节点数量，在setNext方法中判断是否已经是超过其阈值，超过则不允许该链建立，避免无意识地破坏系统性能。
最佳实践
    在例子和通用源码中Handler是抽象类，融合了模板方法模式，每个实现类只要实现两个方法：echo方法处理请求和getHandlerLevel获得处理级别，想想单一职责原则和迪米特法则吧，通过融合模板方法模式，各个实现类只要关注的自己业务逻辑就成了，至于说什么事要自己处理，那就让父类去决定好了，也就是说父类实现了请求传递的功能，子类实现请求的处理，符合单一职责原则，各个实现类只完成一个动作或逻辑，也就是只有一个原因引起类的改变，我建议大家在使用的时候用这种方法，好处是非常明显的了，子类的实现非常简单，责任链的建立也是非常灵活的。
    责任链模式屏蔽了请求的处理过程，你发起一个请求到底是谁处理的，这个你不用关心，只要你把请求抛给责任链的第一个处理者，最终会返回一个处理结果（当然也可以不做任何处理），作为请求者可以不用知道到底是需要谁来处理的，这是责任链模式的核心，同时责任链模式也可以作为一种补救模式来使用。
    举个简单例子，如项目开发的时候，需求确认是这样的：一个请求（如银行客户存款的币种），一个处理者（只处理人民币），但是随着业务的发展（改革开放了嘛，还要处理美元、日元等），处理者的数量和类型都有所增加，那这时候就可以在第一个处理者后面建立一个链，也就是责任链来处理请求，如果是人民币，好，还是第一个业务逻辑来处理；如果是美元，好，传递到第二个业务逻辑来处理；日元、欧元……这些都不用在对原有的业务逻辑产生很大改变，通过扩展实现类就可以很好地解决这些需求变更的问题。
    责任链在实际的项目中使用也是比较多的，书的作者曾经做过这样一个项目，界面上有一个用户注册功能，注册用户分两种，一种是VIP用户，也就是在该单位办理过业务的，一种是普通用户，一个用户的注册要填写一堆信息，VIP用户只比普通用户多了一个输入项：VIP序列号。注册后还需要激活，VIP和普通用户的激活流程也是不同的，VIP是自动发送邮件到用户的邮箱中就算激活了，普通用户要发送短信才能激活，为什么呢？获得手机号码以后好发广告短信啊！项目组就采用了责任链模式，甭管从前台传递过来的是VIP用户信息还是普通用户信息，统一传递到一个处理入口，通过责任链来完成任务的处理
 */

@implementation Client

+ (void)execute
{
    /*
     ● 职责界定不清晰
        对女儿提出的请示，应该在父亲类中做出决定，父亲有责任、有义务处理女儿的请示，因此Father类应该是知道女儿的请求自己处理，而不是在Client类中进行组装出来，也就是说原本应该是父亲这个类做的事情抛给了其他类进行处理，不应该是这样的。
     ● 代码臃肿
        我们在Client类中写了if...else的判断条件，而且能随着能处理该类型的请示人员越多，if...else的判断就越多，想想看，臃肿的条件判断还怎么有可读性？
     ● 耦合过重
        这是什么意思呢，我们要根据Women的type来决定使用IHandler的那个实现类来处理请求。有一个问题是：如果IHandler的实现类继续扩展怎么办？修改Client类？与开闭原则违背了！
     ● 异常情况欠考虑
        妻子只能向丈夫请示吗？如果妻子（比如一个现代女性穿越到古代了，不懂什么“三从四德”）向自己的父亲请示了，父亲应该做何处理？我们的程序上可没有体现出来，逻辑失败了！
     */
//    NSMutableArray *array = [NSMutableArray array];
//    for (int  i = 0; i < 5; i++) {
//        Women *women = [[Women alloc] initWithType:arc4random_uniform(4) request:@"Go Shopping"];
//        [array addObject:women];
//    }
//
//     //定义三个请示对象
//    id<IHandler> father = [Father new];
//    id<IHandler> husband = [Husband new];
//    id<IHandler> son = [Son new];
//
//    for (id<IWomen> women in array) {
//        if ([women fetchType] == 1) {
//            [father handleMessage:women];
//        } else if ([women fetchType] == 2) {
//            [husband handleMessage:women];
//        } else if ([women fetchType] == 3) {
//            [son handleMessage:women];
//        } else {
//            //DO NO THING
//        }
//    }
    
    /*
     责任链模式重构
     在Client中设置请求的传递顺序，先向父亲请示，不是父亲应该解决的问题，则由父亲传递到丈夫类解决，若不是丈夫类解决的问题则传递到儿子类解决，最终的结果必然有一个返回
     结果也正确，业务调用类Client也不用去做判断到底是需要谁去处理，而且Handler抽象类的子类可以继续增加下去，只需要扩展传递链而已，调用类可以不用了解变化过程，甚至是谁在处理这个请求都不用知道。在这种模式下，即使现代社会的一个小太妹穿越到古代（例如掉入时空隧道，或者时空突然扭转，甚至是突然魔法显灵），对“三从四德”没有任何了解也可以自由地应付，反正只要请示父亲就可以了，该父亲处理就父亲处理，不该父亲处理就往下传递。这就是责任链模式。
     */
//    NSMutableArray *array = [NSMutableArray array];
//    for (int  i = 0; i < 5; i++) {
//        Women *women = [[Women alloc] initWithType:arc4random_uniform(4) request:@"Go Shopping"];
//        [array addObject:women];
//    }
//    //定义三个请示对象
//    Handler *father = [HFather new];
//    Handler *husband = [HHusband new];
//    Handler *son = [HSon new];
//    //设置请示顺序
//    [father setNext:husband];
//    [husband setNext:son];
//
//    for (id<IWomen> women in array) {
//        [father handleMessage:women];
//    }
    
    /*
     在场景类或高层模块中对链进行组装，并传递请求，返回结果
     在实际应用中，一般会有一个封装类对责任模式进行封装，也就是替代Client类，直接返回链中的第一个处理者，具体链的设置不需要高层次模块关系，这样，更简化了高层次模块的调用，减少模块间的耦合，提高系统的灵活性。
     */
      //声明所有的处理节点
    AHandler *handler1 = [ConcreteHandler1 new];
    AHandler *handler2 = [ConcreteHandler2 new];
    AHandler *handler3 = [ConcreteHandler3 new];
    //设置链中的阶段顺序1-->2-->3
    [handler1 setNext:handler2];
    [handler2 setNext:handler3];
    //提交请求，返回结果
    AResponse *response = [handler1 handleMessage:[ARequest new]];
}

@end
