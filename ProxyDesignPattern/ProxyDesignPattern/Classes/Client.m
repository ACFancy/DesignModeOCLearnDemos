//
//  Client.m
//  ProxyDesignPattern
//
//  Created by User on 2019/2/22.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Client.h"
#import "GamePlayer.h"
#import "GamePlayerProxy.h"
#import "GamePlayIH.h"
#import "HWProxy.h"
#import "RealSubject.h"
#import "MyInvocationHandler.h"
#import "DynamicProxy.h"
#import "SubjectDynamicProxy.h"

/**
 代理模式（Proxy Pattern）是一个使用率非常高的模式
    为其他对象提供一种代理以控制对这个对象的访问
 代理模式也叫做委托模式，它是一项基本设计技巧。
 许多其他的模式，如状态模式、策略模式、访问者模式本质上是在更特殊的场合采用了委托模式，而且在日常的应用中，代理模式可以提供非常好的访问控制
 三个角色的定义
 ● Subject抽象主题角色
    抽象主题类可以是抽象类也可以是接口，是一个最普通的业务类型定义，无特殊要求。
 ● RealSubject具体主题角色
    也叫做被委托角色、被代理角色。它才是冤大头，是业务逻辑的具体执行者。
 ● Proxy代理主题角色
    也叫做委托类、代理类。
    它负责对真实角色的应用，把所有抽象主题类定义的方法限制委托给真实主题角色实现，并且在真实主题角色处理完毕前后做预处理和善后处理工作。
  代理模式的优点
 ● 职责清晰
    真实的角色就是实现实际的业务逻辑，不用关心其他非本职责的事务，通过后期的代理完成一件事务，附带的结果就是编程简洁清晰。
 ● 高扩展性
    具体主题角色是随时都会发生变化的，只要它实现了接口，甭管它如何变化，都逃不脱如来佛的手掌（接口），那我们的代理类完全就可以在不做任何修改的情况下使用。
 ● 智能化
    这在我们以上的讲解中还没有体现出来，不过在我们以下的动态代理章节中你就会看到代理的智能化有兴趣的读者也可以看看Struts是如何把表单元素映射到对象上的。
 代理模式的使用场景
    我相信第一次接触到代理模式的读者肯定很郁闷，为什么要用代理呀？想想现实世界吧，打官司为什么要找个律师？因为你不想参与中间过程的是是非非，只要完成自己的答辩就成，其他的比如事前调查、事后追查都由律师来搞定，这就是为了减轻你的负担。代理模式的使用场景非常多，大家可以看看Spring AOP，这是一个非常典型的动态代理。
 代理是有个性的
    一个类可以实现多个接口，完成不同任务的整合。也就是说代理类不仅仅可以实现主题接口，也可以实现其他接口完成不同的任务，而且代理的目的是在目标对象方法的基础上作增强，这种增强的本质通常就是对目标对象的方法进行拦截和过滤
 普通代理
    普通代理则是需要用户自己设置代理服务器的IP地址，用户必须知道代理的存在
 强制代理
    调用者直接调用真实角色，而不用关心代理是否存在，其代理的产生是由真实角色决定的
 动态代理
    动态代理是在实现阶段不用关心代理谁，而在运行阶段才指定代理哪一个对象。相对来说，自己写代理类的方式就是静态代理。本章节的核心部分就在动态代理上，现在有一个非常流行的名称叫做面向横切面编程，也就是AOP（Aspect Oriented Programming），其核心就是采用了动态代理机制
    这样与静态代理还有什么区别？都是需要实现一个代理类，有区别，注意看父类，动态代理的主要意图就是解决我们常说的“审计”问题，也就是横切面编程，在不改变我们已有代码结构的情况下增强或控制对象的行为。
 
    注意　要实现动态代理的首要条件是：被代理类必须实现一个接口，回想一下前面的分析吧。当然了，现在也有很多技术如CGLIB可以实现不需要接口也可以实现动态代理的方式。
 
    再次说明，以上的动态代理是一个通用代理框架。如果你想设计自己的AOP框架，完全可以在此基础上扩展，我们设计的是一个通用代理，只要有一个接口，一个实现类，就可以使用该代理，完成代理的所有功效。
 最佳实践
    代理模式应用得非常广泛，大到一个系统框架、企业平台，小到代码片段、事务处理，稍不留意就用到代理模式
    有了AOP大家写代理就更加简单了，有类似Spring AOP和AspectJ这样非常优秀的工具，拿来主义即可！不过，大家可以看看源代码，特别是调试时，只要看到类似$Proxy0这样的结构，你就应该知道这是一个动态代理了。
    友情提醒，在学习AOP框架时，弄清楚几个名词就成：切面（Aspect）、切入点（JoinPoint）、通知（Advice）、织入（Weave）就足够了，理解了这几个名词，应用时你就可以游刃有余了！
 */

@implementation Client

+ (void)execute
{
//    id<IGamePlayer> player = [[GamePlayer alloc] initWithName:@"XXX"];
    //通过真实类获取代理类的实例
//    id<IGamePlayer> proxy = [player fetchProxy];
//    id<IGamePlayer> proxy = [[GamePlayerProxy alloc] initWithGamePlayer:player];
//    id<IGamePlayer> proxy2 = [[GamePlayerProxy alloc] initWithName:@"YYYYY"];
    
    //动态代理,如果没有其他额外操作，那么OC机制是实现 HWProxy，否则自行实现 GamePlayIH
//    id<InvocationHandler> handler = [[GamePlayIH alloc] initWithObject:player];
    
    NSLog(@"%lf", CFAbsoluteTimeGetCurrent());
//    [player loginWithUser:@"ssss" password:@"******"];
//    [player killBoss];
//    [player upgrade];
//    [proxy loginWithUser:@"ssss" password:@"***"];
//    [proxy killBoss];
//    [proxy upgrade];

    //普通代理
//    [proxy2 loginWithUser:@"kkkkk" password:@"*****"];
//    [proxy2 killBoss];
//    [proxy2 upgrade];
    //强制代理
    //它要求你必须通过代理来访问，你想要直接访问它，门儿都没有
//    [player loginWithUser:@"wwwww" password:@"*******"];
//    [player killBoss];
//    [player upgrade];
    //还是不能访问，为什么呢？它不是真实角色指定的对象，这个代理对象是你自己new出来的，当然真实对象不认了，
//    [proxy loginWithUser:@"wwwww" password:@"*******"];
//    [proxy killBoss];
//    [proxy upgrade];
    //实例获取代理后，可以通过该代理完成操作
    //强制代理的概念就是要从真实角色查找到代理角色，不允许直接访问真实角色。高层模块只要调用getProxy就可以访问真实角色的所有方法，它根本就不需要产生一个代理出来，代理的管理已经由真实角色自己完成。
    //高层模块只要调用getProxy就可以访问真实角色的所有方法，它根本就不需要产生一个代理出来，代理的管理已经由真实角色自己完成。
//    [proxy loginWithUser:@"wwwww" password:@"*******"];
//    [proxy killBoss];
//    [proxy upgrade];
    
    //动态产生一个代理者
//    id<IGamePlayer> proxy3 = (id<IGamePlayer>)[[HWProxy alloc] initWithObjects:handler, nil];
//    [proxy3 loginWithUser:@"kkkkk" password:@"*****"];
//    [proxy3 killBoss];
//    [proxy3 upgrade];
//    //动态代理按照OC的机制,GamePlayIH 这个可以不用，实现HWProxy这个就行
//    id<IGamePlayer> proxy4 = (id<IGamePlayer>)[[HWProxy alloc] initWithObjects:player, nil];
//    [proxy4 loginWithUser:@"kkkkk" password:@"*****"];
//    [proxy4 killBoss];
//    [proxy4 upgrade];
    
    
    //动态代理 Client -> Dynamic Proxy -> MyInvocationHandler -> Subject对象
    id<Subject> subject = [RealSubject new];
    id<InvocationHandler> handler = [[MyInvocationHandler alloc] initWithObject:subject];
//    id<Subject> proxy = (id<Subject>)[[DynamicProxy alloc] initWithObjects:handler, nil];
    //如此扩展以后，高层模块对代理的访问会更加简单
    id<Subject> proxy = (id<Subject>)[SubjectDynamicProxy proxyWithObject:handler];
    //代理行为
    [proxy doSomething:@"Finish"];
    
    NSLog(@"%lf", CFAbsoluteTimeGetCurrent());
}

@end
