//
//  Client.m
//  FlyWeightDesignPattern
//
//  Created by User on 2019/3/6.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Client.h"

#import "SignInfo.h"
#import "SignInfoFactory.h"

#import "MultiThread.h"
#import "ExtrinsicState.h"

/*
 享元模式
    是池技术的重要实现方式
    用共享对象可有效地支持大量的细粒度的对象
 享元模式的定义为我们提出了两个要求：细粒度的对象和共享对象。我们知道分配太多的对象到应用程序中将有损程序的性能，同时还容易造成内存溢出，那怎么避免呢？就是享元模式提到的共享技术。我们先来了解一下对象的内部状态和外部状态。
 要求细粒度对象，那么不可避免地使得对象数量多且性质相近，那我们就将这些对象的信息分为两个部分：内部状态（intrinsic）与外部状态（extrinsic）。
 
 ● 内部状态
    内部状态是对象可共享出来的信息，存储在享元对象内部并且不会随环境改变而改变，如我们例子中的id、postAddress等，它们可以作为一个对象的动态附加信息，不必直接储存在具体某个对象中，属于可以共享的部分。
 ● 外部状态
    外部状态是对象得以依赖的一个标记，是随环境改变而改变的、不可以共享的状态，如我们例子中的考试科目+考试地点复合字符串，它是一批对象的统一标识，是唯一的一个索引值。
 享元模式的通用类图
 ● Flyweight——抽象享元角色
    它简单地说就是一个产品的抽象类，同时定义出对象的外部状态和内部状态的接口或实现。
 ● ConcreteFlyweight——具体享元角色
    具体的一个产品类，实现抽象角色定义的业务。该角色中需要注意的是内部状态处理应该与环境无关，不应该出现一个操作改变了内部状态，同时修改了外部状态，这是绝对不允许的。
 ● unsharedConcreteFlyweight——不可共享的享元角色
    不存在外部状态或者安全要求（如线程安全）不能够使用共享技术的对象，该对象一般不会出现在享元工厂中。
 ● FlyweightFactory——享元工厂
    职责非常简单，就是构造一个池容器，同时提供从池中获得对象的方法。
 
 享元模式的目的在于运用共享技术，使得一些细粒度的对象可以共享，我们的设计确实也应该这样，多使用细粒度的对象，便于重用或重构
 
 享元模式的优点和缺点
    享元模式是一个非常简单的模式，它可以大大减少应用程序创建的对象，降低程序内存的占用，增强程序的性能，但它同时也提高了系统复杂性，需要分离出外部状态和内部状态，而且外部状态具有固化特性，不应该随内部状态改变而改变，否则导致系统的逻辑混乱。
 
  享元模式的使用场景
 ● 系统中存在大量的相似对象。
 ● 细粒度的对象都具备较接近的外部状态，而且内部状态与环境无关，也就是说对象没有特定身份。
 ● 需要缓冲池的场景。

 享元模式的扩展
线程安全的问题
    线程安全是一个老生常谈的话题，只要使用Java开发都会遇到这个问题，我们之所以要在今天的享元模式中提到该问题，是因为该模式有太大的几率发生线程不安全，为什么呢？
    我们还以报考系统为例来说明这个问题。大家有没有想过，为什么要以考试科目+考试地点作为外部状态呢？为什么不能以考试科目或者考试地点作为外部状态呢？这样池中的对象会更少！可以！完全可以！我们把程序以考试科目为外部状态
    我们在使用享元模式时，对象池中的享元对象尽量多，多到足够满足业务为止
 性能平衡
    外部状态最好以Java的基本类型作为标志，如String、int等，可以大幅地提升效率
 
 最佳实践
    Flyweight是拳击比赛中的特用名词，意思是“特轻量级”，指的是51公斤级比赛，用到设计模式中是指我们的类要轻量级，粒度要小，这才是它要表达的意思。粒度小了，带来的问题就是对象太多，那就用共享技术来解决。
    看看Java的帮助文件中String类的intern方法。如果是String的对象池中有该类型的值，则直接返回对象池中的对象，那当然相等了。
 
    需要说明一下的是，虽然可以使用享元模式可以实现对象池，但是这两者还是有比较大的差异，对象池着重在对象的复用上，池中的每个对象是可替换的，从同一个池中获得A对象和B对象对客户端来说是完全相同的，它主要解决复用，而享元模式在主要解决的对象的共享问题，如何建立多个可共享的细粒度对象则是其关注的重点。
 
 
 
 JAVA知识
 内存溢出对Java应用来说实在是太平常了，有以下两种可能。
 ● 内存泄漏
    无意识的代码缺陷，导致内存泄漏，JVM不能获得连续的内存空间。
 ● 对象太多
    代码写得很烂，产生的对象太多，内存被耗尽。现在的情况是没有内存泄漏，那只有一种原因——代码太差把内存耗尽。
 */

@implementation Client

+ (void)execute
{
     //从工厂中获得一个对象
//    SignInfo *signInfo = [SignInfoFactory fetchSignInfo];
    //进行其他业务处理
    /*
     既然已经定位是内存中对象太多，那就应该想到使用一种共享的技术减少对象数量，那怎么共享呢？
     
     大家知道，对象池（Object Pool）的实现有很多开源工具，比如Apache的commons-pool就是一个非常不错的池工具，我们暂时还用不到这种重量级的工具，我们自己来设计一个共享对象池，需要实现如下两个功能。
     ● 容器定义
        我们要定义一个池容器，在这个容器中容纳哪些对象。
     ● 提供客户端访问的接口
        我们要提供一个接口供客户端访问，池中有可用对象时，可以直接从池中获得，否则建立一个新的对象，并放置到池中。
     */
    
    /*
     前面还有很多的对象创建提示语句，不再复制。通过这样的改造后，我们想想内存中有多少个SignInfo对象？是的，最多120个对象，相比之前几万个SignInfo对象优化了非常多。细心的读者可能注意到了SignInfo4Pool类基本上没有跑出我们的视线范围，仅仅在工厂方法中使用到了，尽量缩小变更引起的风险，想想看我们的改动是不是很小，只要在展示层中拼一个字符串，然后传递到工厂方法中就可以了。
     
     通过这样的改造后，第三天系统运行得非常稳定，CPU占用率也下降了，而且以后再也没有出现类似问题，这就是享元模式的功劳
     */
//    for (int i = 0; i < 4; i++) {
//        NSString *subject = [NSString stringWithFormat:@"科目%d", i];
//        for (int j = 0; j < 30; j++) {
//            NSString *key = [NSString stringWithFormat:@"%@考试地点%d",subject, j];
//            [SignInfoFactory fetchSignInfo:key];
//        }
//    }
//
//    SignInfo *signInfo = [SignInfoFactory fetchSignInfo:@"科目1考试地点1"];
//
    
    /*
     多线程不安全的例子
      看看，线程不安全了吧，这是正常的，设置的享元对象数量太少，导致每个线程都到对象池中获得对象，然后都去修改其属性，于是就出现一些不和谐数据。只要使用Java开发，线程问题是不可避免的，那我们怎么去避免这个问题呢？享元模式是让我们使用共享技术，而Java的多线程又有如此问题，该如何设计呢？没什么可以参考的标准，只有依靠经验，在需要的地方考虑一下线程安全，在大部分的场景下都不用考虑。我们在使用享元模式时，对象池中的享元对象尽量多，多到足够满足业务为止。
     */
//    [SignInfoFactory fetchSignInfo:@"科目1"];
//    [SignInfoFactory fetchSignInfo:@"科目2"];
//    [SignInfoFactory fetchSignInfo:@"科目3"];
//    [SignInfoFactory fetchSignInfo:@"科目4"];
//
//    SignInfo *signInfo = [SignInfoFactory fetchSignInfo:@"科目2"];
//    while (true) {
//        signInfo.iD = @"ZhangSan";
//        signInfo.location = @"ZhangSan";
//        [[[MultiThread alloc] initWithInfo:signInfo] start];
//        signInfo.iD = @"LiSi";
//        signInfo.location = @"LiSi";
//        [[[MultiThread alloc] initWithInfo:signInfo] start];
//    }
    
    /*
     性能平衡例子
     看到没？一半的效率，这还是非常简单的享元对象，看看我们重写的equals方法和hashCode方法，这段代码是必须实现的，如果比较复杂，这个时间差异会更大。
     各位，想想看，使用自己编写的类作为外部状态，必须覆写equals方法和hashCode方法，而且执行效率还比较低，这种吃力不讨好的事情最好别做，外部状态最好以Java的基本类型作为标志，如String、int等，可以大幅地提升效率。
     */
    ExtrinsicState *state1 = [ExtrinsicState new];
    state1.location = @"上海";
    state1.subject = @"科目1";
    [SignInfoFactory fetchSignInfoWithState:state1];
    
    ExtrinsicState *state2 = [ExtrinsicState new];
    state2.location = @"上海";
    state2.subject = @"科目1";
    
    NSTimeInterval current = CFAbsoluteTimeGetCurrent();
    for (int i = 0; i < 10000; i++) {
        [SignInfoFactory fetchSignInfoWithState:state2];
    }
    NSLog(@"Time cost: %lf", CFAbsoluteTimeGetCurrent() - current);
    
    NSString *key1 = @"科目1上海";
    NSString *key2 = @"科目1上海";
    //初始化对象池
    [SignInfoFactory fetchSignInfo:key1];
    current = CFAbsoluteTimeGetCurrent();
    for (int i = 0; i < 10000; i++) {
        [SignInfoFactory fetchSignInfo:key2];
    }
    NSLog(@"Time cost: %lf", CFAbsoluteTimeGetCurrent() - current);
}

@end
