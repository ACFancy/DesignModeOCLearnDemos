//
//  Client.m
//  BridgeDesignPattern
//
//  Created by User on 2019/3/7.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Client.h"
#import "HouseCorp.h"
#import "ClothesCorp.h"
#import "IPodCorp.h"

#import "CopycatCorp.h"
#import "House.h"
#import "IPod.h"
#import "Clothes.h"

#import "ConcreteImplementor1.h"
#import "RefinedAbstraction.h"

/*
 桥梁模式（Bridge Pattern）也叫做桥接模式
    是一个比较简单的模式
    将抽象和实现解耦，使得两者可以独立地变化
 
 我们先来看桥梁模式中的4个角色
 ● Abstraction——抽象化角色
   它的主要职责是定义出该角色的行为，同时保存一个对实现化角色的引用，该角色一般是抽象类。
 ● RefinedAbstraction——修正抽象化角色
   它引用实现化角色对抽象化角色进行修正。
 ● Implementor——实现化角色
   它是接口或者抽象类，定义角色必需的行为和属性。
 ● ConcreteImplementor——具体实现化角色
   它实现接口或抽象类定义的方法和属性。
 
 桥梁模式中的几个名词比较拗口，大家只要记住一句话就成：抽象角色引用实现角色，或者说抽象角色的部分实现是由实现角色完成的
 
 桥梁模式的优点
 ● 抽象和实现分离
    这也是桥梁模式的主要特点，它完全是为了解决继承的缺点而提出的设计模式。在该模式下，实现可以不受抽象的约束，不用再绑定在一个固定的抽象层次上。
 ● 优秀的扩充能力
    看看我们的例子，想增加实现？没问题！想增加抽象，也没有问题！只要对外暴露的接口层允许这样的变化，我们已经把变化的可能性减到最小。
 ● 实现细节对客户透明
    客户不用关心细节的实现，它已经由抽象层通过聚合关系完成了封装。
 
 桥梁模式的使用场景
 ● 不希望或不适用使用继承的场景
    例如继承层次过渡、无法更细化设计颗粒等场景，需要考虑使用桥梁模式。
 ● 接口或抽象类不稳定的场景
    明知道接口不稳定还想通过实现或继承来实现业务需求，那是得不偿失的，也是比较失败的做法。
 ● 重用性要求较高的场景
    设计的颗粒度越细，则被重用的可能性就越大，而采用继承则受父类的限制，不可能出现太细的颗粒度。
 
 桥梁模式的注意事项
    桥梁模式是非常简单的，使用该模式时主要考虑如何拆分抽象和实现，并不是一涉及继承就要考虑使用该模式，那还要继承干什么呢？桥梁模式的意图还是对变化的封装，尽量把可能变化的因素封装到最细、最小的逻辑单元中，避免风险扩散。因此读者在进行系统设计时，发现类的继承有N层时，可以考虑使用桥梁模式。
 
 最佳实践
    大家对类的继承有什么看法吗？
    1.继承的优点有很多，可以把公共的方法或属性抽取，父类封装共性，子类实现特性，这是继承的基本功能
    2.缺点，即强侵入，父类有一个方法，子类也必须有这个方法。这是不可选择的，会带来扩展性的问题
 Q:我举个简单的例子来说明：Father类有一个方法A，Son继承了这个方法，然后GrandSon也继承了这个方法，问题是突然有一天Son要重写父类的这个方法，他敢做吗？
 A:绝对不敢！GrandSon要用从Father继承过来的方法A，如果你修改了，那就要修改Son和GrandSon之间的关系，那这个风险就太大了！
    这里讲的这个桥梁模式就是这一问题的解决方法，桥梁模式描述了类间弱关联关系，还说上面的那个例子
    Father类完全可以把可能会变化的方法放出去，Son子类要拥有这个方法很简单，桥梁搭过去，获得这个方法，GrandSon也一样，即使你Son子类不想使用这个方法也没关系，对GrandSon不产生影响，它不是从Son中继承来的方法

 不能说继承不好，它非常好，但是有缺点，我们可以扬长避短，
    对于比较明确不发生变化的，则通过继承来完成
    若不能确定是否会发生变化的，那就认为是会发生变化，则通过桥梁模式来解决，这才是一个完美的世界。
 */

@implementation Client

+ (void)execute
{
    /*
     简单的设计
     */
//    HouseCorp *houseCorp = [HouseCorp new];
//    [houseCorp makeMoney];
//
////    ClothesCorp *clothesCorp = [ClothesCorp new];
////    [clothesCorp makeMoney];
//
//    IPodCorp *iPodCorp = [IPodCorp new];
//    [iPodCorp makeMoney];
    
    
    /*
     桥梁设计
     ● 增加公司，要么继承Corp类，要么继承HouseCorp或ShanZhaiCorp，不用再修改原有的类了。
     
     ● 增加产品，继承Product类，或者继承House类，你要把房子分为公寓房、别墅、商业用房等。
     
     你唯一要修改的就是Client类。类都增加了，高层模块也需要修改，也就是说Corp类和Product类都可以自由地扩展，而不会对整个应用产生太大的变更，这就是桥梁模式。
     */
//    House *house = [House new];
//
//    HouseCorp *houseCorp = [[HouseCorp alloc] initWithProduct:house];
//    [houseCorp makeMoney];
//
//    CopycatCorp *copycatCorp = [[CopycatCorp alloc] initWithProduct:[IPod new]];
//    [copycatCorp makeMoney];
    
//    CopycatCorp *copycatCorp = [[CopycatCorp alloc] initWithProduct:[Clothes new]];
//    [copycatCorp makeMoney];
    
    /*
     通用类图调用
     桥梁模式是一个非常简单的模式，它只是使用了类间的聚合关系、继承、覆写等常用功能，但是它却提供了一个非常清晰、稳定的架构
     */
    id<Implementor> imp = [ConcreteImplementor1 new];
    Abstraction *abs = [[RefinedAbstraction alloc] initWithImp:imp];
    [abs request];
}

@end
