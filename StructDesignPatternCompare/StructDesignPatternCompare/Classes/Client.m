//
//  Client.m
//  StructDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

/*
 结构类模式包括适配器模式、桥梁模式、组合模式、装饰模式、门面模式、享元模式和代理模式。为什么叫结构类模式呢？因为它们都是通过组合类或对象产生更大结构以适应更高层次的逻辑需求。
 代理模式VS装饰模式
 1.装饰模式就是代理模式的一个特殊应用，两者的共同点是都具有相同的接口
 2.不同点则是代理模式着重对代理过程的控制，而装饰模式则是对类的功能进行加强或减弱，它着重类的功能变化
 3.代理有决定权，装饰模式只起到增强的作用
 
最佳实践
    1.通过例子，我们可以看出代理模式和装饰模式有非常相似的地方，甚至代码实现都非常相似，特别是装饰模式中省略抽象装饰角色后，两者代码基本上相同，但是还是有细微的差别。
    2.代理模式是把当前的行为或功能委托给其他对象执行，代理类负责接口限定：是否可以调用真实角色，以及是否对发送到真实角色的消息进行变形处理，它不对被主题角色（也就是被代理类）的功能做任何处理，保证原汁原味的调用。代理模式使用到极致开发就是AOP，这是各位采用Spring架构开发必然要使用到的技术，它就是使用了代理和反射的技术。
    3.装饰模式是在要保证接口不变的情况下加强类的功能，它保证的是被修饰的对象功能比原始对象丰富（当然，也可以减弱），但不做准入条件判断和准入参数过滤，如是否可以执行类的功能，过滤输入参数是否合规等，这不是装饰模式关心的。
 4.代理模式在Java的开发中俯拾皆是，是大家非常熟悉的模式，应用非常广泛，而装饰模式是一个比较拘谨的模式，在实际应用中接触比较少，但是也有不少框架项目使用了装饰模式，例如在JDK的java.io.*包中就大量使用装饰模式，类似如下的代码：
    OutputStream out = new DataOutputStream（new FileOutputStream（"test.txt"））
    这是装饰模式的一个典型应用，使用DataOutputStream封装了一个FileOutputStream，以方便进行输出流处理。
 
 装饰模式VS适配器模式
    1.装饰模式和适配器模式在通用类图上没有太多的相似点，差别比较大
    2.它们的功能有相似的地方：都是包装作用，都是通过委托方式实现其功能
    3.不同点是：装饰模式包装的是自己的兄弟类，隶属于同一个家族（相同接口或父类），适配器模式则修饰非血缘关系类，把一个非本家族的对象伪装成本家族的对象，注意是伪装，因此它的本质还是非相同接口的对象。
 最佳实践
    不同点
 ● 意图不同
    1.装饰模式的意图是加强对象的功能，例子中就是把一个怯弱的小天鹅强化成了一个美丽、自信的白天鹅，它不改变类的行为和属性，只是增加（当然了，减弱类的功能也是可能存在的）功能，使美丽更加美丽，强壮更加强壮，安全更加安全
    2.适配器模式关注的则是转化，它的主要意图是两个不同对象之间的转化，它可以把一个天鹅转化为一个小鸭子看待，也可以把一只小鸭子看成是一只天鹅(那估计要在小鸭子的背上装个螺旋桨了)，它关注转换。
 ● 施与对象不同
    1.装饰模式装饰的对象必须是自己的同宗，也就是相同的接口或父类，只要在具有相同的属性和行为的情况下，才能比较行为是增加还是减弱
    2.适配器模式则必须是两个不同的对象，因为它着重于转换，只有两个不同的对象才有转换的必要，如果是相同对象还转换什么
 ● 场景不同
    1.装饰模式在任何时候都可以使用，只要是想增强类的功能
    2.适配器模式则是一个补救模式，一般出现在系统成熟或已经构建完毕的项目中，作为一个紧急处理手段采用。
 ● 扩展性不同
    1.装饰模式很容易扩展！今天不用这个修饰，好，去掉；明天想再使用，好，加上。这都没有问题。而且装饰类可以继续扩展下去
    2.适配器模式就不同了，它在两个不同对象之间架起了一座沟通的桥梁，建立容易，去掉就比较困难了，需要从系统整体考虑是否能够撤销
 */

#import "Client.h"
#import "Runner.h"
#import "RunnerAgent.h"

#import "DRunner.h"
#import "DRunnerWithJet.h"

#import "Decoration2/UglyDucking.h"
#import "Decoration2/BeautifyAppearance.h"
#import "Decoration2/StrongBehavior.h"

#import "Adapter/DDucking.h"
#import "Adapter/DUglyDuckling.h"

@implementation Client

+ (void)execute
{
    /*
     代理模式
     不管是哪种情况，我们都证实了代理的一个功能：在不改变接口的前提下，对过程进行控制。在我们例子中，运动员要不要跑步是由代理人决定的，代理人说跑步就跑步，说不跑就不跑，它有绝对判断权。
     */
//    id<IRunner> runner = [Runner new];
//    RunnerAgent *agent = [[RunnerAgent alloc] initWithRunner:runner];
//    [agent run];
    
    /*
     装饰模式
     注意思考一下我们的程序，我们通过增加了一个装饰类，就完成了对原有类的功能增加，由一个普通的短跑运动员变成了带有喷气装置的超人运动员，其速度岂是普通人能相比的？！
     */
//    id<IDRunner> runner = [DRunner new];
//    runner = [[DRunnerWithJet alloc] initWithRunner:runner];
//    [runner run];
    
    /*
     装饰模式2
     使用装饰模式描述丑小鸭蜕变的过程是如此简单，它关注了对象功能的强化，是对原始对象的行为和属性的修正和加强，把原本被人歧视、冷落的丑小鸭通过两次强化处理最终转变为受人喜爱、羡慕的白天鹅。
     */
    
//    id<ISwan> duckling = [UglyDucking new];
//    [duckling desAppearance];
//    [duckling fly];
//    [duckling cry];
//
//    //Change
//    duckling = [[BeautifyAppearance alloc] initWithSwan:duckling];
//    duckling = [[StrongBehavior alloc] initWithSwan:duckling];
//
//    [duckling cry];
//    [duckling desAppearance];
//    [duckling fly];

    
    /*
     适配器模式
     采用适配器模式讲述丑小鸭的故事，我们首先观察到的是鸭与天鹅的不同点，建立了不同的接口以实现不同的物种，然后在需要的时候（根据故事情节）把一个物种伪装成另外一个物种，实现不同物种的相同处理过程，这就是适配器模式的设计意图。
     */
    id<IDuck> duck = [DDucking new];
    [duck cry];
    [duck desAppearance];
    [duck desBehavior];
    
    id<IDuck> uglyDucking = [DUglyDuckling new];
    [uglyDucking cry];
    [uglyDucking desAppearance];
    [uglyDucking desBehavior];
    
}

@end
