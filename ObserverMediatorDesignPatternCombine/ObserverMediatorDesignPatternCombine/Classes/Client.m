//
//  Client.m
//  ObserverMediatorDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

/*
 注意　采用单来源调用的两个对象一般是组合关系，两者有相同的生命期，它通常适用于有单例模式和工厂方法模式的场景中
 注意　设计原则只是一个理论，而不是一个带有刻度的标尺，因此在系统设计中不应该把它视为不可逾越的屏障，而是应该把它看成是一个方向标，尽量遵守，而不是必须恪守。
 观察者模式+中介者模式
 混编小结
    1.该事件触发框架结构清晰，扩展性好，读者可以进行抽象化处理后应用于实际开发中。我们回头看看在这个案例中使用了哪些设计模式
 ● 工厂方法模式
    1.负责产生产品对象，方便产品的修改和扩展，并且实现了产品和工厂的紧耦合，避免产品随意被创建而无触发事件的情况发生
● 桥梁模式
    1.在产品和事件两个对象的关系中我们使用了桥梁模式，如此设计后，两者都可以自由地扩展（前提是需要抽取抽象化）而不会破坏原有的封装。
 ● 观察者模式
    1.观察者模式解决了事件如何通知处理者的问题，而且观察者模式还有一个优点是可以有多个观察者，也就是我们的架构是可以有多层级、多分类的处理者。
    2.新扩展一个新类型（新接口）的观察者？没有问题，扩展ProductEvent即可
 ● 中介者模式
    1.事件有了，处理者也有了，这些都会发生变化，并且处理者之间也有耦合关系，中介者则可以完美地处理这些复杂的关系
    2.我们再来思考一下，如果我们要扩展这个框架，可能还会用到什么模式？首先是责任链模式，它可以帮助我们解决一个处理者处理多个事件的问题
    3.其次是模板方法模式，处理者的启用、停用等，都可以通过模板方法模式来实现；
    4.再次是装饰模式，事件的包装、处理者功能的强化都会用到装饰模式
    5.当然了，我们还可能用到其他的模式，只要能够很好地解决我们的困境，那就好好使用吧，这也是我们学习设计模式的目的
 */

#import "Client.h"

#import "EventDispatch.h"
#import "Beggar.h"
#import "Commoner.h"
#import "Nobleman.h"
#import "ProductManager.h"

@implementation Client

+ (void)execute
{
    /*
     我们的事件处理框架已经生效了，有行为，就产生事件，并有处理事件的处理者，并且这三者都相互解耦，可以独立地扩展下去。比如，想增加处理者，没有问题，建立一个类继承EventCustomer，然后注册到EventDispatch上，就可以进行处理事件了；想扩展产品，没问题？需要稍稍修改一下，首先抽取出产品和事件的抽象类，然后再进行扩展即可
     */
    EventDispatch *dispatch = [EventDispatch fetchEventDispatch];
    [dispatch registerCustomer:[Beggar new]];
    [dispatch registerCustomer:[Commoner new]];
    [dispatch registerCustomer:[Nobleman new]];
    
    ProductManager *factory = [ProductManager new];
    Product *p = [factory createProduct:@"小男孩原子弹"];
    [factory editProduct:p name:@"胖子号原子弹"];
    [factory clone:p];
    [factory abandonProduct:p];
}

@end
