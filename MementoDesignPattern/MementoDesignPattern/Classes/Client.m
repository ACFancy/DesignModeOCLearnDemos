//
//  Client.m
//  MementoDesignPattern
//
//  Created by User on 2019/3/1.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Client.h"
#import "Boy.h"
#import "Caretaker.h"
#import "Memento.h"

#import "AOriginator.h"
#import "AMemento.h"
#import "ACaretaker.h"

/*
 备忘录模式
    提供了一种弥补真实世界缺陷的方法，让“后悔药”在程序的世界中真实可行
    在不破坏封装性的前提下，捕获一个对象的内部状态，并在该对象之外保存这个状态。这样以后就可将该对象恢复到原先保存的状态。
    通俗地说，备忘录模式就是一个对象的备份模式，提供了一种程序数据的备份方法'
 我们来看看类图中的三个角色。
 ● Originator发起人角色
    记录当前时刻的内部状态，负责定义哪些属于备份范围的状态，负责创建和恢复备忘录数据
 ● Memento备忘录角色
    负责存储Originator发起人对象的内部状态，在需要的时候提供发起人需要的内部状态
 ● Caretaker备忘录管理员角色
    对备忘录进行管理、保存和提供备忘录。
 
备忘录模式的应用
    由于备忘录模式有太多的变形和处理方式，每种方式都有它自己的优点和缺点，标准的备忘录模式很难在项目中遇到，基本上都有一些变换处理方式。因此，我们在使用备忘录模式时主要了解如何应用以及需要注意哪些事项就成了。
 
备忘录模式的使用场景
● 需要保存和恢复数据的相关状态场景。
● 提供一个可回滚（rollback）的操作；比如Word中的CTRL+Z组合键，IE浏览器中的后退按钮，文件管理器上的backspace键等。
● 需要监控的副本场景中。例如要监控一个对象的属性，但是监控又不应该作为系统的主业务来调用，它只是边缘应用，即使出现监控不准、错误报警也影响不大，因此一般的做法是备份一个主线程中的对象，然后由分析程序来分析。
 ● 数据库连接的事务管理就是用的备忘录模式，想想看，如果你要实现一个JDBC驱动，你怎么来实现事务？还不是用备忘录模式嘛！
 
备忘录模式的注意事项
 ● 备忘录的生命期
    备忘录创建出来就要在“最近”的代码中使用，要主动管理它的生命周期，建立就要使用，不使用就要立刻删除其引用，等待垃圾回收器对它的回收处理。
 ● 备忘录的性能
    不要在频繁建立备份的场景中使用备忘录模式（比如一个for循环中），原因有二：一是控制不了备忘录建立的对象数量；二是大对象的建立是要消耗资源的，系统的性能需要考虑。因此，如果出现这样的代码，设计师就应该好好想想怎么修改架构了。
 备忘录模式的扩展
 ● clone方式的备忘录
    大家还记得在第13章中讲的原型模式吗？我们可以通过复制的方式产生一个对象的内部状态，这是一个很好的办法，发起人角色只要实现Cloneable就成
    现在我们来考虑一下原型模式深拷贝和浅拷贝的问题，在复杂的场景下它会让你的程序逻辑异常混乱，出现错误也很难跟踪。因此Clone方式的备忘录模式适用于较简单的场景。
    注意　使用Clone方式的备忘录模式，可以使用在比较简单的场景或者比较单一的场景中，尽量不要与其他的对象产生严重的耦合关系。
  ● 多状态的备忘录模式
    读者应该看到我们以上讲解都是单状态的情况，在实际的开发中一个对象不可能只有一个状态，一个JavaBean有多个属性非常常见，这都是它的状态，如果照搬我们以上讲解的备忘录模式，是不是就要写一堆的状态备份、还原语句？这不是一个好办法，这种类似的非智力劳动越多，犯错误的几率越大，那我们有什么办法来处理多个状态的备份问题呢？
    下面我们来讲解一个对象全状态备份方案，它有多种处理方式，比如使用Clone的方式就可以解决，使用数据技术也可以解决（DTO回写到临时表中）等，我们要讲的方案就对备忘录模式继续扩展一下，实现一个JavaBean对象的所有状态的备份和还原
   ● 多备份的备忘录
     不知道你有没有做过系统级别的维护？比如Backup Administrator（备份管理员），每天负责查看系统的备份情况，所有的备份都是由自动化脚本产生的。有一天，突然有一个重要的系统说我数据库有点问题，请把上一个月末的数据拉出来恢复，那怎么办？对备份管理员来说，这很好办，直接根据时间戳找到这个备份，还原回去就成了，但是对于我们刚刚学习的备忘录模式却行不通，为什么呢？它对于一个确定的发起人，永远只有一份备份，在这种情况下，单一的备份就不能满足要求了，我们需要设计一套多备份的架构。
     我们先来说一个名词，检查点（Check Point），也就是你在备份的时候做的戳记，系统级的备份一般是时间戳，那我们程序的检查点该怎么设计呢？一般是一个有意义的字符串。
     注意　内存溢出问题，该备份一旦产生就装入内存，没有任何销毁的意向，这是非常危险的。因此，在系统设计时，要严格限定备忘录的创建，建议增加Map的上限，否则系统很容易产生内存溢出情况。
 封装得更好一点
    在系统管理上，一个备份的数据是完全、绝对不能修改的，它保证数据的洁净，避免数据污染而使备份失去意义。在我们的设计领域中，也存在着同样的问题，备份是不能被篡改的，也就是说需要缩小备份出的备忘录的阅读权限，保证只能是发起人可读就成了，那怎么才能做到这一点呢？使用内置类
     内置类Memento全部是private的访问权限，也就是说除了发起人外，别人休想访问到，那如果要产生关联关系又应如何处理呢？通过接口！别忘记了我们还有一个空接口是公共的访问权限
在这里我们使用了一个新的设计方法：双接口设计，我们的一个类可以实现多个接口，在系统设计时，如果考虑对象的安全问题，则可以提供两个接口，
       1. 一个是业务的正常接口，实现必要的业务逻辑，叫做宽接口；
       2.另外一个接口是一个空接口，什么方法都没有，其目的是提供给子系统外的模块访问，比如容器对象，这个叫做窄接口，由于窄接口中没有提供任何操纵数据的方法，因此相对来说比较安全。
最佳实践
    备忘录模式是我们设计上“月光宝盒”，可以让我们回到需要的年代；是程序数据的“后悔药”，吃了它就可以返回上一个状态；
    是设计人员的定心丸，确保即使在最坏的情况下也能获得最近的对象状态
    如果大家看懂了的话，请各位在设计的时候就不要使用数据库的临时表作为缓存备份数据了，虽然是一个简单的办法，但是它加大了数据库操作的频繁度，把压力下放到数据库了，最好的解决办法就是使用备忘录模式
 */

@implementation Client

+ (void)execute
{
    /*
     程序运行正确，输出结果也是我们期望的，但是结果正确并不表示程序是最优的，我们来看看场景类Client，它代表的是高层模块，或者说是非“近亲”模块的调用者，注意看backup变量的使用，它对于高层模块完全是多余的，为什么一个状态的保存和恢复要让高层模块来负责呢？这应该是Boy类的职责，而不应该让高层模块来完成，也就是破坏了Boy类的封装，或者说Boy类没有封装好，它应该是把backup的定义容纳进来，而不应该让高层模块来定义
     */
//    Boy *boy = [Boy new];
//    [boy setState:@"心情很棒！"];
//    NSLog(@"Now boy feels %@", [boy fetchState]);
//
//    Boy *backup = [Boy new];
//    [backup setState:[boy fetchState]];
//
//    [boy changeState];
//    NSLog(@"Now boy feels %@", [boy fetchState]);
//
//    [boy setState:[backup fetchState]];
//    NSLog(@"Now boy feels %@", [boy fetchState]);
    
    /*
     问题我们已经知道了，就是Boy类封装不够，那我们应该如何修改呢？如果在Boy类中再增加一个方法或者其他的内部类来保存这个状态，则对单一职责原则是一种破坏，想想看单一职责原则是怎么说的？一个类的职责应该是单一的，Boy类本身的职责是追求女孩子，而保留和恢复原始状态则应该由另外一个类来承担，那我们把这个类取名就叫做备忘录，这和大家经常在桌面上贴的那个便签是一个概念，分析到这里我们的思路已经非常清楚了
     */
//    Boy *boy1 = [Boy new];
//    [boy1 setState:@"心情很棒！"];
//    NSLog(@"Now Boy1 feels %@", [boy1 fetchState]);
//
//    Memento *mem = [boy1 createMemento];
//    [boy1 changeState];
//    NSLog(@"Now Boy1 feels %@", [boy1 fetchState]);
//
//    [boy1 restoreMemento:mem];
//    NSLog(@"Now Boy1 feels %@", [boy1 fetchState]);
    
    
    /*
     运行结果保持相同，虽然程序中不再重复定义Boy类的对象了，但是我们还是要关心备忘录，这对迪米特法则是一个亵渎，它告诉我们只和朋友类通信，那这个备忘录对象是我们必须要通信的朋友类吗？对高层模块来说，它最希望要做的就是创建一个备份点，然后在需要的时候再恢复到这个备份点就成了，它不用关心到底有没有备忘录这个类。那根据这一指导思想，我们就需要把备忘录类再包装一下，怎么包装呢？建立一个管理类，就是管理这个备忘录
     注意看黑体部分，就修改了这么多，看看程序的逻辑是不是清晰了很多，需要备份的时候就创建一个备份，然后丢给备忘录管理者进行管理，要取的时候再从管理者手中拿到这个备份。这个备份者就类似于一个备份的仓库管理员，创建一个丢进去，需要的时候再拿出来。这就是备忘录模式。
     */
//    Boy *boy2 = [Boy new];
//    Caretaker *caretaker = [Caretaker new];
//
//    [boy2 setState:@"心情很棒！"];
//    NSLog(@"Now Boy1 feels %@", [boy2 fetchState]);
//
//    [caretaker setMemento:[boy2 createMemento]];
//    [boy2 changeState];
//    NSLog(@"Now Boy1 feels %@", [boy2 fetchState]);
//
//    [boy2 restoreMemento:[caretaker memento]];
//    NSLog(@"Now Boy1 feels %@", [boy2 fetchState]);
    
    /*
     备忘录模式通用类
        备忘录模式就是这么简单，真正使用备忘录模式的时候可比这复杂得多。
     */
//    AOriginator *originator = [AOriginator new];
//    ACaretaker *careTaker = [ACaretaker new];
//
//    //原始状态
//    [originator setState:@"1"];
//    NSLog(@"Origin State %@", [originator state]);
//
//    [careTaker setMemento:[originator createMemento]];
//
//    //修改后的状态
//    [originator setState:@"2"];
//    NSLog(@"Origin State %@", [originator state]);
//
//    //恢复原始状态
//    [originator restoreMemento:[careTaker memento]];
//    NSLog(@"Origin State %@", [originator state]);
    
    /*
     可能你要发问了，这和备忘录模式的定义不相符，它定义是“在该对象之外保存这个状态”，而你却把这个状态保存在了发起人内部。是的，设计模式定义的诞生比Java的出世略早，它没有想到Java程序是这么有活力，有远见，而且在面向对象的设计中，即使把一个类封装在另一个类中也是可以做到的，何况一个小小的对象复制，这是它的设计模式完全没有预见到的，我们把它弥补回来
     */
//    AOriginator *originator2 = [AOriginator new];
//
//    [originator2 setState:@"初始状态"];
//    NSLog(@"Origin State %@", [originator2 state]);
//
//    //建立备份
//    [originator2 createMemento2];
//
//    //修改状态
//    [originator2 setState:@"改变状态"];
//    NSLog(@"Origin State %@", [originator2 state]);
//
//    //恢复状态
//    [originator2 restoreMemento2];
//    NSLog(@"Origin State %@", [originator2 state]);
    
    /*
     多状态的备忘录模式
     注意　如果要设计一个在运行期决定备份状态的框架，则建议采用AOP框架来实现，避免采用动态代理无谓地增加程序逻辑复杂性。
     
     */
//    AOriginator *originator3 = [AOriginator new];
//    ACaretaker *careTaker3 = [ACaretaker new];
//
//    //初始化
//    [originator3 setState1:@"中国"];
//    [originator3 setState2:@"繁荣"];
//    [originator3 setState3:@"富强"];
//
//    NSLog(@"Origin State %@%@%@", [originator3 state1], [originator3 state2], [originator3 state3]);
//
//    //创建一个备忘录
//    [careTaker3 setMemento:[originator3 createMemento3]];
//
//    //修改状态值
//    [originator3 setState1:@"中国"];
//    [originator3 setState2:@"复兴"];
//    [originator3 setState3:@"崛起"];
//
//    NSLog(@"Origin State %@%@%@", [originator3 state1], [originator3 state2], [originator3 state3]);
//
//    //恢复状态
//    [originator3 restoreMemento3:[careTaker3 memento]];
//    NSLog(@"Origin State %@%@%@", [originator3 state1], [originator3 state2], [originator3 state3]);
    
    /*
     多备份的备忘录
     我们只要把通用代码中的Caretaker管理员稍做修改就可以了
     把容纳备忘录的容器修改为Map类型就可以了
     */
//    AOriginator *originator4 = [AOriginator new];
//    ACaretaker *careTaker4 = [ACaretaker new];
//
//    [originator4 setState:@"xxx"];
//
//    [originator4 setState1:@"111"];
//    [originator4 setState2:@"222"];
//    [originator4 setState3:@"333"];
//
//    NSLog(@"Origin State %@%@%@%@", [originator4 state], [originator4 state1], [originator4 state2], [originator4 state3]);
//    [careTaker4 setMemento:[originator4 createMemento] forKey:@"001"];
//    [careTaker4 setMemento:[originator4 createMemento3] forKey:@"002"];
//
//    [originator4 setState:@"yyy"];
//
//    [originator4 setState1:@"aaa"];
//    [originator4 setState2:@"bbb"];
//    [originator4 setState3:@"ccc"];
//    NSLog(@"Origin State %@%@%@%@", [originator4 state], [originator4 state1], [originator4 state2], [originator4 state3]);
//
//    [originator4 restoreMemento:[careTaker4 fetchMemento:@"001"]];
//    [originator4 restoreMemento3:[careTaker4 fetchMemento:@"002"]];
//    NSLog(@"Origin State %@%@%@%@", [originator4 state], [originator4 state1], [originator4 state2], [originator4 state3]);
    
    /*
     封装的更好点
     全部通过接口访问，这当然没有问题，如果你想访问它的属性那是肯定不行的。但是安全是相对的，没有绝对的安全，可以使用refelect反射修改Memento的数据。
     */
    AOriginator *originator5 = [AOriginator new];
    ACaretaker *careTaker5 = [ACaretaker new];
    
    [originator5 setState:@"初始状态"];
    NSLog(@"Origin State %@", [originator5 state]);

    //建立备份
    [careTaker5 setImemento:[originator5 createMemento4]];

    //修改状态
    [originator5 setState:@"改变状态"];
    NSLog(@"Origin State %@", [originator5 state]);

    //恢复状态
    [originator5 restoreMemento4:[careTaker5 imemento]];
    NSLog(@"Origin State %@", [originator5 state]);
}

@end
