//
//  Client.m
//  StateDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Client.h"
#import "Lift.h"

#import "AContext.h"
#import "ClosingState.h"

#import "Context.h"
#import "ConcreteState1.h"

/*
  状态模式
    当一个对象内在状态改变时允许其改变行为，这个对象看起来像改变了其类
    状态模式的核心是封装，状态的变更引起了行为的变更，从外部看起来就好像这个对象对应的类发生了改变一样
 状态模式中的3个角色
 ● State——抽象状态角色
  接口或抽象类，负责对象状态定义，并且封装环境角色以实现状态切换。
 ● ConcreteState——具体状态角色
   每一个具体状态必须完成两个职责：本状态的行为管理以及趋向状态处理，通俗地说，就是本状态下要做的事情，以及本状态如何过渡到其他状态。
 ● Context——环境角色
    定义客户端需要的接口，并且负责具体状态的切换。
 
 状态模式相对来说比较复杂，它提供了一种对物质运动的另一个观察视角，通过状态变更促使行为的变化，就类似水的状态变更一样，一碗水的初始状态是液态，通过加热转变为气态，状态的改变同时也引起体积的扩大，然后就产生了一个新的行为：鸣笛或顶起壶盖，瓦特就是这么发明蒸汽机的
 
 状态模式的优点
 ● 结构清晰
    避免了过多的switch...case或者if...else语句的使用，避免了程序的复杂性,提高系统的可维护性。
 ● 遵循设计原则
    很好地体现了开闭原则和单一职责原则，每个状态都是一个子类，你要增加状态就要增加子类，你要修改状态，你只修改一个子类就可以了。
 ● 封装性非常好
    这也是状态模式的基本要求，状态变换放置到类的内部来实现，外部的调用不用知道类内部如何实现状态和行为的变换。
 
 状态模式的缺点
    状态模式既然有优点，那当然有缺点了。但只有一个缺点，子类会太多，也就是类膨胀。如果一个事物有很多个状态也不稀奇，如果完全使用状态模式就会有太多的子类，不好管理，这个需要大家在项目中自己衡量。其实有很多方式可以解决这个状态问题，如在数据库中建立一个状态表，然后根据状态执行相应的操作，这个也不复杂，看大家的习惯和嗜好了。
 
 状态模式的使用场景
 ● 行为随状态改变而改变的场景
    这也是状态模式的根本出发点，例如权限设计，人员的状态不同即使执行相同的行为结果也会不同，在这种情况下需要考虑使用状态模式。
 ● 条件、分支判断语句的替代者
    在程序中大量使用switch语句或者if判断语句会导致程序结构不清晰，逻辑混乱，使用状态模式可以很好地避免这一问题，它通过扩展子类实现了条件的判断处理。
 
 状态模式的注意事项
    状态模式适用于当某个对象在它的状态发生改变时，它的行为也随着发生比较大的变化，也就是说在行为受状态约束的情况下可以使用状态模式，而且使用时对象的状态最好不要超过5个
 
 最佳实践
    上面的例子可能比较复杂，请各位看官耐心看，看完肯定有所收获。我翻遍了所有能找得到的资料（关于这个电梯的例子也是由《Design Pattern for Dummies》这本书激发出来的），基本上没有一本把这个状态模式讲透彻的（当然，还是有几本讲得不错），我不敢说我就讲得透彻，大家都只讲了一个状态到另一个状态的过渡。状态间的过渡是固定的
    这个状态图是很多书上都有的，状态A只能切换到状态B，状态B再切换到状态C。举例最多的就是TCP监听的例子。TCP有3个状态：等待状态、连接状态、断开状态，然后这3个状态按照顺序循环切换。按照这个状态变更来讲解状态模式，我认为是不太合适的，为什么呢？你在项目中很少看到一个状态只能过渡到另一个状态情形，项目中遇到的大多数情况都是一个状态可以转换为几种状态
    状态B既可以切换到状态C，又可以切换到状态D，而状态D也可以切换到状态A或状态B，这在项目分析过程中有一个状态图可以完整地展示这种蜘蛛网结构
    例如，一些收费网站的用户就有很多状态，如普通用户、普通会员、VIP会员、白金级用户等，这个状态的变更你不允许跳跃？！这不可能，所以在例子中就举了一个比较复杂的应用，基本上可以实现状态间自由切换，这才是最经常用到的状态模式。
    再提一个问题，状态间的自由切换，那会有很多种呀，你要挨个去牢记一遍吗？比如上面那个电梯的例子，我要一个正常的电梯运行逻辑，规则是开门->关门->运行->停止；还要一个紧急状态（如火灾）下的运行逻辑，关门->停止，紧急状态时，电梯当然不能用了；再要一个维修状态下的运行逻辑，这个状态任何情况都可以，开着门电梯运行？可以！门来回开关？可以！永久停止不动？可以！那这怎么实现呢？需要我们把已经有的几种状态按照一定的顺序再重新组装一下，那这个是什么模式？什么模式？大声点！建造者模式！对，建造模式+状态模式会起到非常好的封装作用。
    更进一步，应该有部分读者做过工作流开发，如果不是土制框架，那么就应该有个状态机管理（即使是土制框架也应该有），如一个Activity（节点）有初始化状态（Initialized State）、挂起状态（Suspended State）、完成状态（Completed State）等，流程实例也有这么多状态，那这些状态怎么管理呢？通过状态机（State Machine）来管理，那状态机是个什么东西呢？就是我们上面提到的Context类的升级变态BOSS
 */

@implementation Client

+ (void)execute
{
//    id<ILift> lift = [Lift new];
//    [lift open];
//    [lift close];
//    [lift run];
//    [lift stop];
    
    /*
     ● 敞门状态
     
     按了电梯上下按钮，电梯门开，这中间大概有10秒的时间，那就是敞门状态。在这个状态下电梯只能做的动作是关门动作。
     
     ● 闭门状态
     
     电梯门关闭了，在这个状态下，可以进行的动作是：开门（我不想坐电梯了）、停止（忘记按路层号了）、运行。
     
     ● 运行状态
     
     电梯正在跑，上下窜，在这个状态下，电梯只能做的是停止。
     
     ● 停止状态
     电梯停止不动，在这个状态下，电梯有两个可选动作：继续运行和开门动作。
     */
//    id<ILift> lift = [Lift new];
//    [lift setState:STOPPING_STATE];
//    [lift open];
//    [lift close];
//    [lift run];
//    [lift stop];
    
    /*
     ● 电梯实现类Lift有点长
     
     长的原因是我们在程序中使用了大量的switch...case这样的判断（if...else也是一样），程序中只要有这样的判断就避免不了加长程序，而且在业务复杂的情况下，程序会更长，这就不是一个很好的习惯了，较长的方法和类无法带来良好的维护性，毕竟，程序首先是给人阅读的，然后才是机器执行。
     
     ● 扩展性非常差劲
     
     大家来想想，电梯还有两个状态没有加，是什么？通电状态和断电状态，你要是在程序增加这两个方法，你看看Open()、Close()、Run()、Stop()这4个方法都要增加判断条件，也就是说switch判断体中还要增加case项，这与开闭原则相违背。
     
     ● 非常规状态无法实现
     
     我们来思考我们的业务，电梯在门敞开状态下就不能上下运行了吗？电梯有没有发生过只有运行没有停止状态呢（从40层直接坠到1层嘛）？电梯故障嘛，还有电梯在检修的时候，可以在stop状态下不开门，这也是正常的业务需求呀，你想想看，如果加上这些判断条件，上面的程序有多少需要修改？虽然这些都是电梯的业务逻辑，但是一个类有且仅有一个原因引起类的变化，单一职责原则，看看我们的类，业务任务上一个小小的增加或改动都使得我们这个电梯类产生了修改，这在项目开发上是有很大风险的。
     
     既然我们已经发现程序中有以上问题，我们怎么来修改呢？刚刚我们是从电梯的方法以及这些方法执行的条件去分析，现在我们换个角度来看问题。我们来想，电梯在具有这些状态的时候能够做什么事情，也就是说在电梯处于某个具体状态时，我们来思考这个状态是由什么动作触发而产生的，以及在这个状态下电梯还能做什么事情。例如，电梯在停止状态时，我们来思考两个问题：
     
     ● 停止状态是怎么来的，那当然是由于电梯执行了stop方法而来的。
     
     ● 在停止状态下，电梯还能做什么动作？继续运行？开门？当然都可以了。
     
     */
    AContext *context = [AContext new];
    LiftState *state = [ClosingState new];
    //最好不要这么传递，由于引用计数的问题，会被释放掉如果里面替换了
//    [context setLiftState:[ClosingState new]];
    [context setLiftState:state];
    [context open];
    [context close];
    [context run];
    [context stop];
    
    /*
     通用code实例
     看到没？我们已经隐藏了状态的变化过程，它的切换引起了行为的变化。对外来说，我们只看到行为的发生改变，而不用知道是状态变化引起的。
     */
//    Context *ctx = [Context new];
//    AState *state1 = [ConcreteState1 new];
//    [ctx setCurrentState:state1];
//    [ctx handle1];
//    [ctx handle2];
}

@end