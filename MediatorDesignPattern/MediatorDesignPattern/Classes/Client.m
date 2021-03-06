//
//  Client.m
//  MediatorDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Client.h"
#import "Purchase.h"
#import "Sale.h"
#import "Stock.h"
#import "Mediator.h"
/*
 运行结果也是我们期望的，三个不同类型的参与者完成了各自的活动
 每个类都与其他两个类产生了关联关系。迪米特法则认为“每个类只和朋友类交流”，这个朋友类并非越多越好，朋友类越多，耦合性越大，要想修改一个就得修改一片
 这不是面向对象设计所期望的，况且这还是仅三个模块的情况，属于比较简单的一个小项目
 这是一个蜘蛛网的结构，别说是编写程序了，就是给人看估计也能让一大批人昏倒！每个对象都需要和其他几个对象交流，对象越多，每个对象要交流的成本也就越大了，只是维护这些对象的交流就能让一大批程序员望而却步！从这方面来说，我们已经发现设计的缺陷了，作为一个架构师，发现缺陷就要想办法修改。
 网络的基本知识，网络拓扑有三种类型：总线型、环型、星型
 在星型网络拓扑中，每个计算机通过交换机和其他计算机进行数据交换，各个计算机之间并没有直接出现交互的情况。这种结构简单，而且稳定，只要中间那个交换机不瘫痪，整个网络就不会发生大的故障
 加入了一个中介者作为三个模块的交流核心，每个模块之间不再相互交流，要交流就通过中介者进行
 每个模块只负责自己的业务逻辑，不属于自己的则丢给中介者来处理，简化了各模块之间的耦合关系
 
 中介者模式
    用一个中介对象封装一系列的对象交互，中介者使各对象不需要显示地相互作用，从而使其耦合松散，而且可以独立地改变它们之间的交互
 中介者模式由以下几部分组成：
 ● Mediator 抽象中介者角色
    抽象中介者角色定义统一的接口，用于各同事角色之间的通信。
 ● Concrete Mediator 具体中介者角色
    具体中介者角色通过协调各同事角色实现协作行为，因此它必须依赖于各个同事角色。
 ● Colleague 同事角色
    每一个同事角色都知道中介者角色，而且与其他的同事角色通信的时候，一定要通过中介者角色协作。
    每个同事类的行为分为两种:
    1.一种是同事本身的行为，比如改变对象本身的状态，处理自己的行为等，这种行为叫做自发行为（Self-Method），与其他的同事类或中介者没有任何的依赖
    2.必须依赖中介者才能完成的行为，叫做依赖方法（Dep-Method）。
 在Mediator抽象类中我们只定义了同事类的注入，为什么使用同事实现类注入而不使用抽象类注入呢？那是因为同事类虽然有抽象，但是没有每个同事类必须要完成的业务方法，当然如果每个同事类都有相同的方法，比如execute、handler等，那当然注入抽象类，做到依赖倒置。
 具体的中介者一般只有一个，即通用中介者
 为什么同事类要使用构造函数注入中介者，而中介者使用getter/setter方式注入同事类呢？这是因为同事类必须有中介者，而中介者却可以只有部分同事类。
中介者模式的优点
    中介者模式的优点就是减少类间的依赖，把原有的一对多的依赖变成了一对一的依赖，同事类只依赖中介者，减少了依赖，当然同时也降低了类间的耦合。
 中介者模式的缺点
    中介者模式的缺点就是中介者会膨胀得很大，而且逻辑复杂，原本N个对象直接的相互依赖关系转换为中介者和同事类的依赖关系，同事类越多，中介者的逻辑就越复杂。
 中介者模式的使用场景
    中介者模式简单，但是简单不代表容易使用，很容易被误用。
    在面向对象的编程中，对象和对象之间必然会有依赖关系，如果某个类和其他类没有任何相互依赖的关系，那这个类就是一个“孤岛”，在项目中就没有存在的必要了！就像是某个人如果永远独立生活，与任何人都没有关系，那这个人基本上就算是野人了——排除在人类这个定义之外。
    类之间的依赖关系是必然存在的，一个类依赖多个类的情况也是存在的，存在即合理，那是否可以说只要有多个依赖关系就考虑使用中介者模式呢？答案是否定的。
    中介者模式未必能帮你把原本凌乱的逻辑整理得清清楚楚，而且中介者模式也是有缺点的，这个缺点在使用不当时会被放大，比如原本就简单的几个对象依赖关系，如果为了使用模式而加入了中介者，必然导致中介者的逻辑复杂化，因此中介者模式的使用需要“量力而行”！
    中介者模式适用于多个对象之间紧密耦合的情况，紧密耦合的标准是：在类图中出现了蜘蛛网状结构。在这种情况下一定要考虑使用中介者模式，这有利于把蜘蛛网梳理为星型结构，使原本复杂混乱的关系变得清晰简单。
中介者模式的实际应用
    中介者模式也叫做调停者模式，是什么意思呢？一个对象要和N多个对象交流，就像对象间的战争，很混乱。这时，需要加入一个中心，所有的类都和中心交流，中心说怎么处理就怎么处理，我们举一些在开发和生活中经常会碰到的例子。
 ● 机场调度中心
    大家在每个机场都会看到有一个“××机场调度中心”，它就是具体的中介者，用来调度每一架要降落和起飞的飞机。比如，某架飞机（同事类）飞到机场上空了，就询问调度中心（中介者）“我是否可以降落”以及“降落到哪个跑道”，调度中心（中介者）查看其他飞机（同事类）情况，然后通知飞机降落。如果没有机场调度中心，飞机飞到机场了，飞行员要先看看有没有飞机和自己一起降落的，有没有空跑道，停机位是否具备等情况，这种局面是难以想象的！
 ● MVC框架
    大家都应该使用过Struts，MVC框架，其中的C（Controller）就是一个中介者，叫做前端控制器(Front Controller)，它的作用就是把M(Model，业务逻辑)和V（View，视图）隔离开，协调M和V协同工作，把M运行的结果和V代表的视图融合成一个前端可以展示的页面，减少M和V的依赖关系。MVC框架已经成为一个非常流行、成熟的开发框架，这也是中介者模式的优点的一个体现。
 ● 媒体网关
    媒体网关也是一个典型的中介者模式，比如使用MSN时，张三发消息给李四，其过程应该是这样的：张三发送消息，MSN服务器(中介者)接收到消息，查找李四，把消息发送到李四，同时通知张三，消息已经发送。在这里，MSN服务器就是一个中转站，负责协调两个客户端的信息交流，与此相反的就是IPMsg（也叫飞鸽），它没有使用中介者，而直接使用了UDP广播的方式，每个客户端既是客户端也是服务器端。
 ● 中介服务
    现在中介服务非常多，比如租房中介、出国中介，这些也都是中介模式的具体体现，比如你去租房子，如果没有房屋中介，你就必须一个一个小区去找，看看有没有空房子，有没有适合自己的房子，找到房子后还要和房东签合约，自己检查房屋的家具、水电煤等；有了中介后，你就省心多了，找中介，然后安排看房子，看中了，签合约，中介帮你检查房屋家具、水电煤等等。这也是中介模式的实际应用。
最佳实践
    本章讲述的中介者模式很少用到接口或者抽象类，这与依赖倒置原则是冲突的，这是什么原因呢？
    1.首先，既然是同事类而不是兄弟类（有相同的血缘），那就说明这些类之间是协作关系，完成不同的任务，处理不同的业务，所以不能在抽象类或接口中严格定义同事类必须具有的方法（从这点也可以看出继承是高侵入性的）。
    2.这是不合适的，就像你我是同事，虽然我们大家都是朝九晚五地上班，但是你跟我干的活肯定不同，不可能抽象出一个父类统一定义同事所必须有的方法。
    3.当然，每个同事都要吃饭、上厕所，可以把这些最基本的信息封装到抽象中，但这些最基本的行为或属性是中介者模式要关心的吗？
    4.如果两个对象不能提炼出共性，那就不要刻意去追求两者的抽象，抽象只要定义出模式需要的角色即可。
    5.当然如果严格遵守面向接口编程的话，则是需要抽象的，这就需要读者在实际开发中灵活掌握
    其次，在一个项目中，中介者模式可能被多个模块采用，每个中介者所围绕的同事类各不相同，你能抽象出一个具有共性的中介者吗？
    1.不可能，一个中介者抽象类一般只有一个实现者，除非中介者逻辑非常复杂，代码量非常大，这时才会出现多个中介者的情况
    2.所以，对于中介者来说，抽象已经没有太多的必要
 中介者模式是一个非常好的封装模式，也是一个很容易被滥用的模式，一个对象依赖几个对象是再正常不过的事情，但是纯理论家就会要求使用中介者模式来封装这种依赖关系，这是非常危险的！
 使用中介模式就必然会带来中介者的膨胀问题，这在一个项目中是很不恰当的。
    大家可以在如下的情况下尝试使用中介者模式：
    ● N个对象之间产生了相互的依赖关系（N＞2）。
    ● 多个对象有依赖关系，但是依赖的行为尚不确定或者有发生改变的可能，在这种情况下一般建议采用中介者模式，降低变更引起的风险扩散。
    ● 产品开发。一个明显的例子就是MVC框架，把中介者模式应用到产品中，可以提升产品的性能和扩展性，但是对于项目开发就未必，因为项目是以交付投产为目标，而产品则是以稳定、高效、扩展为宗旨。
 */

@implementation Client

+ (void)execute
{
//    Purchase *purchase = [Purchase new];
//    [purchase buyIBMcomputer:100];
//
//    Sale *sale = [Sale new];
//    [sale sellIBMcomputer:1];
//
//    Stock *stock = [Stock new];
//    [stock clearStock];
    
    
    //在场景类中增加了一个中介者，然后分别传递到三个同事类中，三个类都具有相同的特性：只负责处理自己的活动（行为），与自己无关的活动就丢给中介者处理，程序运行的结果是相同的。
    //从项目设计上来看，加入了中介者，设计结构清晰了很多，而且类间的耦合性大大减少，代码质量也有了很大的提升。
    //在多个对象依赖的情况下，通过加入中介者角色，取消了多个对象的关联或依赖关系，减少了对象的耦合性。
    AbstractMediator *mediator = [Mediator new];
    
    Purchase *purchase = [[Purchase alloc] initWithMediator:mediator];
    [purchase buyIBMcomputer:100];
    
    Sale *sale = [[Sale alloc] initWithMediator:mediator];
    [sale sellIBMcomputer:1];
    
    Stock *stock = [[Stock alloc] initWithMediator:mediator];
    [stock clearStock];
}

@end
