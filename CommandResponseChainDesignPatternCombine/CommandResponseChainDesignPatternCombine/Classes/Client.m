//
//  Client.m
//  CommandResponseChainDesignPatternCombine
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

/*
 命令模式+责任链模式
 混编小结
 ● 责任链模式
    负责对命令的参数进行解析，而且所有的扩展都是增加链数量和节点，不涉及原有的代码变更
 ● 命令模式
    负责命令的分发，把适当的命令分发到指定的链上。
 ● 模板方法模式
   1. 在Command类以及子类中，buildChain方法是模板方法，只是没有基本方法而已
   2. 在责任链模式的CommandName类中，用了一个典型的模板方法handlerMessage，它调用了基本方法，基本方法由各个实现类实现，非常有利于扩展
 ● 迭代器模式
    在for循环中我们多次用到类似for(Class c:classes)的结构，是谁来支撑该方法运行？当然是迭代器模式，只是JDK已经把它融入到了API中，更方便使用了。
 可能读者已经注意到了，"ls-l-a"这样的组合选项还没有处理。确实没有处理，以下提供两个思路来处理
 ● 独立处理
    "ls-l-a"等同于"ls-la"，也等同于"ls-al"命令，可以把"ls-la"中的选项"la"作为一个参数来进行处理，扩展一个类就可以了。该方法的缺点是类膨胀得太大，但是简单。
 ● 混合处理
    1.修正命令族处理链，每个命令处理节点运行完毕后，继续由后续节点处理，最终由Command类组装结果，根据每个节点的处理结果，组合后生成完整的返回信息
    2.如"ls-l-a"就应该是LS_L类与LS_A类两者返回值组装的结果，当然链上的节点返回值就要放在Collection类型中了
    3.该框架还有一个名称，叫做命令链（Chain of Command）模式，具体来说就是命令模式作为责任链模式的排头兵,由命令模式分发具体的消息到责任链模式
    4.对于该框架，读者可以继续扩展下去。当然，上面的程序还可以优化，优化的结果就是Command类缩为一个类，通过CommandEnum配置文件类传递命令，这比较容易实现，读者可以自行设计
 */

#import "Client.h"
#import "Invoker.h"

@implementation Client

+ (void)execute
{
    Invoker *invoker = [Invoker new];
    NSLog(@"%@", [invoker exec:@"ls"]);
    sleep(2);
    NSLog(@"%@", [invoker exec:@"ls -l"]);
    sleep(2);
    NSLog(@"%@", [invoker exec:@"ls -a"]);
    sleep(2);
    NSLog(@"%@", [invoker exec:@"df"]);
    sleep(2);
    NSLog(@"%@", [invoker exec:@"df -k"]);
    sleep(2);
    NSLog(@"%@", [invoker exec:@"df -g"]);
}

@end
