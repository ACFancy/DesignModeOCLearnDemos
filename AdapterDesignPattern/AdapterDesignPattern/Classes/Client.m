//
//  Client.m
//  AdapterDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Client.h"
#import "UserInfo.h"
#import "OuterUserInfo.h"
#import "Adapter.h"
#import "ConcreteTarget.h"
#import "OuterBaseInfo.h"
#import "OuterUserHomeInfo.h"
#import "OuterUserOfficeInfo.h"
#import "IOuterUserInfo.h"
#import "Adaptee1.h"
#import "Adaptee2.h"
#import "NAdapter.h"

/*
 Adapter 将Adaptee转换变成 Target的中间人（过渡）对象
 适配器模式
    将一个类的接口变换成客户端所期待的另一种接口，从而使原本因接口不匹配而无法在一起工作的两个类能够在一起工作.
 适配器模式又叫做变压器模式，也叫做包装模式（Wrapper），但是包装模式可不止一个，还包括了第17章讲解的装饰模式。
 
 适配器模式在生活中还是很常见的，比如你笔记本上的电源适配器，可以使用在110～220V之间变化的电源，而笔记本还能正常工作，这也是适配器一个良好模式的体现，简单地说，适配器模式就是把一个接口或类转换成其他的接口或类
 从另一方面来说，适配器模式也就是一个包装模式，为什么呢？它把Adaptee包装成一个Target接口的类，加了一层衣服，包装成另外一个靓妞了。
 适配器模式的三个角色
 ● Target目标角色
    该角色定义把其他类转换为何种接口，也就是我们的期望接口，例子中的IUserInfo接口就是目标角色。
 ● Adaptee源角色
    你想把谁转换成目标角色，这个“谁”就是源角色，它是已经存在的、运行良好的类或对象，经过适配器角色的包装，它会成为一个崭新、靓丽的角色。
 ● Adapter适配器角色
    适配器模式的核心角色，其他两个角色都是已经存在的角色，而适配器角色是需要新建立的，它的职责非常简单：把源角色转换为目标角色，
 适配器模式的优点
 ● 适配器模式可以让两个没有任何关系的类在一起运行，只要适配器这个角色能够搞定他们就成。
 ● 增加了类的透明性
    想想看，我们访问的Target目标角色，但是具体的实现都委托给了源角色，而这些对高层次模块是透明的，也是它不需要关心的。
 ● 提高了类的复用度
    然了，源角色在原有的系统中还是可以正常使用，而在目标角色中也可以充当新的演员。
 ● 灵活性非常好
    某一天，突然不想要适配器，没问题，删除掉这个适配器就可以了，其他的代码都不用修改，基本上就类似一个灵活的构件，想用就用，不想就卸载。
 适配器模式的使用场景
    你有动机修改一个已经投产中的接口时，适配器模式可能是最适合你的模式。比如系统扩展了，需要使用一个已有或新建立的类，但这个类又不符合系统的接口，怎么办？使用适配器模式，这也是我们例子中提到的。
 
 适配器模式的注意事项
    1.适配器模式最好在详细设计阶段不要考虑它，它不是为了解决还处在开发阶段的问题，而是解决正在服役的项目问题，没有一个系统分析师会在做详细设计的时候考虑使用适配器模式，
    2.这个模式使用的主要场景是扩展应用中，就像我们上面的那个例子一样，系统扩展了，不符合原有设计的时候才考虑通过适配器模式减少代码修改带来的风险。
    3.再次提醒一点，项目一定要遵守依赖倒置原则和里氏替换原则，否则即使在适合使用适配器的场合下，也会带来非常大的改造
 对象适配器
    它的委托是通过对象层次的关联关系进行委托的，而不是继承关系。好了，讲了这么多，我们需要给这种适配器起个名字，就是对象适配器
 类适配器
    通过继承进行的适配，叫做类适配器
 对象适配器和类适配器的区别是：
    1.类适配器是类间继承，对象适配器是对象的合成关系，也可以说是类的关联关系，这是两者的根本区别。
    2.二者在实际项目中都会经常用到
    2.1.由于对象适配器是通过类间的关联关系进行耦合的，因此在设计时就可以做到比较灵活，
      比如修补源角色的隐形缺陷，关联其他对象等，
    2.2.而类适配器就只能通过覆写源角色的方法进行扩展，在实际项目中，对象适配器使用到场景相对较多。
 最佳实践
    适配器模式是一个补偿模式，或者说是一个“补救”模式，通常用来解决接口不相容的问题，在百分之百的完美设计中是不可能使用到的
    什么是百分之百的完美设计？“千虑”而没有“一失”的设计
    再完美的设计也会遇到“需求”变更这个无法逃避的问题
    就以我们上面的人力资源管理系统为例来说，不管系统设计得多么完美，都无法逃避新业务的发生，技术只是一个工具而已，是因为它推动了其他行业的进步和发展而具有了价值
    通俗地说，技术是为业务服务的，因此业务在日新月异变化的同时，也对技术提出了同样的要求，在这种要求下，就需要我们有一种或一些这样的补救模式诞生，使用这些补救模式可以保证我们的系统在生命周期内能够稳定、可靠、健壮的运行
    而适配器模式就是这样的一个“救世主”，它在需求巨变、业务飞速而导致你极度郁闷、烦躁、崩溃的时候横空出世，它通过把非本系统接口的对象包装成本系统可以接受的对象，从而简化了系统大规模变更风险的存在。
 */

@implementation Client

+ (void)execute
{
//    id<IUserInfo> yongGirl = [UserInfo new];
//    for (int i = 0; i < 101; i++) {
//        NSLog(@"%@", [yongGirl fetchMobileNumber]);
//    }
    
    /*
     大家看，使用了适配器模式只修改了一句话，其他的业务逻辑都不用修改就解决了系统对接的问题，而且在我们实际系统中只是增加了一个业务类的继承，就实现了可以查本公司的员工信息，也可以查人力资源公司的员工信息，尽量少的修改，通过扩展的方式解决了该问题。这就是适配模式。
     */
//    id<IUserInfo> yongGirl = [OuterUserInfo new];
//    for (int i = 0; i < 101; i++) {
//        NSLog(@"%@", [yongGirl fetchMobileNumber]);
//    }
    
//    //场景类 类适配器
//    id<Target> target = [ConcreteTarget new];
//    [target request];
//    //现在增加了适配器角色后的业务逻辑
//    id<Target> target2 = [Adapter new];
//    [target2 request];
    
//      //外系统的人员信息
//    id<IOuterUserBaseInfo> baseInfo = [OuterBaseInfo new];
//    id<IOuterUserHomeInfo> homeInfo = [OuterUserHomeInfo new];
//    id<IOuterOfficeInfo> officeInfo = [OuterUserOfficeInfo new];
//
//    //传递三个对象
//    id<IUserInfo> yongGirl = [[IOuterUserInfo alloc] initWithOuterBaseInfo:baseInfo
//                                                              outeHomeInfo:homeInfo
//                                                           outerOfficeInfo:officeInfo];
//    for (int i = 0; i < 101; i++) {
//        NSLog(@"%@", [yongGirl fetchMobileNumber]);
//    }
    //对象适配器
    Adaptee1 *adptee1 = [Adaptee1 new];
    Adaptee2 *adptee2 = [Adaptee2 new];
    id<Target> target3 = [[NAdapter alloc] initWithAdaptee1:adptee1 adaptee2:adptee2];
    [target3 request];
}

@end
