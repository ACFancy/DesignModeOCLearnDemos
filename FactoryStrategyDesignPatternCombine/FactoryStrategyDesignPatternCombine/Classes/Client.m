//
//  Client.m
//  FactoryStrategyDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

/*
 工厂方法模式+策略模式
 策略模式是有缺陷的吗？
    1.它的具体策略必须暴露出去，而且还要由上层模块初始化，这不合适，与迪米特法则有冲突，
    2.高层次模块对低层次的模块应该仅仅处在“接触”的层次上，而不应该是“耦合”的关系，否则，维护的工作量就会非常大
 想办法来修改这个缺陷?
    1.正好工厂方法模式可以帮我们产生指定的对象
 工厂方法模式要指定一个类，它才能产生对象，怎么办？
    1.引入一个配置文件进行映射，避免系统僵化情况的发生，我们以枚举类完成该任务
 那我们怎样把交易编号与扣款策略对应起来呢？
    1.采用状态模式或责任链模式都可以，如果采用状态则认为交易编号就是一个交易对象的状态，对于一笔确定的交易（一个已经生成了的对象），它的状态不会从一个状态过渡到另一个状态，也就是说它的状态只有一个，执行完毕后即结束，不存在多状态的问题
    2.如果采用责任链模式，则可以用交易编码作为链中的判断依据，由每个执行节点进行判断，返回相应的扣款模式
    3.但是在实际中，采用了关系型数据库存储扣款规则与交易编码的对应关系
 这么复杂的扣款模块总要进行一个封装吧？
    1.不能让上层的业务模块直接深入到模块的内部，于是门面模式又摆在了眼前
 
 混编小结
● 策略模式
 1.负责对扣款策略进行封装，保证两个策略可以自由切换，而且日后增加扣款策略也非常简单容易。
● 工厂方法模式
 1.修正策略模式必须对外暴露具体策略的问题，由工厂方法模式直接产生一个具体策略对象，而其他模块则不需要依赖具体的策略
● 门面模式
 1.负责对复杂的扣款系统进行封装，封装的结果就是避免高层模块深入子系统内部，同时提供系统的高内聚、低耦合的特性
 2.我们主要使用了这三个模式，它们的好处是灵活、稳定，我们可以设想一下可能有哪些业务变化
● 扣款策略变更
 1.增加一个新扣款策略，三步就可以完成：实现IDeduction接口，增加StrategyMan配置项，扩展扣款策略的利用（也就是门面模式的getDeductionType方法，在实际项目中这里只需要增加数据库的配置项）。减少一个策略很简单，修改扣款策略的利用即可。变更一个扣款策略也很简单，扩展一个实现类口就可以了。
● 变更扣款策略的利用规则
 1.我们的系统不想大修改，还记得我们提出的状态模式吗？这个就是为策略的利用服务的，变更它就能满足要求。想把IC卡也纳入策略利用的规则也不复杂
 2.其实这个变更还真发生了，系统投产后，业务提出考虑退休人员的情况，退休人员的IC卡与普通在职员工一样，但是它的扣款不仅仅是根据交易编码
 3.还要根据IC卡对象，系统的变更做法是增加一个扣款策略，同时扩展扣款利用策略，也就是数据库的配置项
 4.在fetchDeductionType中新扩展了一个功能：根据IC卡号，确认是否是退休人员，是退休人员，则使用新的扣款策略，这是一个非常简单的扩展
 5.这就是一个mini版的金融交易系统，没啥复杂的，剩下的问题就是开始考虑系统的鲁棒性，这才是难点
 */

#import "Client.h"

#import "Card.h"
#import "Trade.h"
#import "DeductionFacade.h"

@implementation Client

+ (void)execute
{
    Card *card = [self initIC];
    for (int i = 0; i < 10; i++) {
        Trade *trade = [self createTrade];
        [DeductionFacade deduct:card trade:trade];
        NSLog(@"%@ Trade Success", [trade tradeNo]);
        NSLog(@"Trade Amount: %lf", ([trade amount] / 100.0));
        [self showCard:card];
    }
}

#pragma mark - Private Methods
+ (Card *)initIC
{
    Card *card = [Card new];
    [card setCardNo:@"11001001000"];
    [card setFreeMoney:100000];
    [card setSteadyMoney:80000];
    return card;
}

+ (Trade *)createTrade
{
    Trade *trade = [Trade new];
    [trade setTradeNo:@"abc1111"];
    [trade setAmount:(arc4random_uniform(800) + 1) * 100];
    return trade;
}

+ (void)showCard:(Card *)card
{
    NSLog(@"IC NO:%@", [card cardNo]);
    NSLog(@"Steady Money: %lf", [card steadyMoney] / 100.0);
    NSLog(@"Free Money: %lf", [card freeMoney] / 100.0);
}

@end
