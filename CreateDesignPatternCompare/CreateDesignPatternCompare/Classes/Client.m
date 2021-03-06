//
//  Client.m
//  CreateDesignPatternCompare
//
//  Created by User on 2019/3/11.
//  Copyright © 2019年 User. All rights reserved.
//

/*
 1.创建类模式包括工厂方法模式、建造者模式、抽象工厂模式、单例模式和原型模式，它们都能够提供对象的创建和管理职责
 2.其中的单例模式和原型模式非常容易理解，单例模式是要保持在内存中只有一个对象，原型模式是要求通过复制的方式产生一个新的对象，这两个不容易混淆。剩下的就是工厂方法模式、抽象工厂模式和建造者模式了，这三个之间有较多的相似性。
 工厂方法模式VS建造者模式
 1.工厂方法模式注重的是整体对象的创建方法
    1.1 具体怎么生产、怎么组装，这不是工厂方法模式要考虑的，也就是说，工厂模式关注的是一个产品整体，生产出的产品应该具有相似的功能和架构。
 2.建造者模式注重的是部件构建的过程，旨在通过一步一步地精确构造创建出一个复杂的对象。
 example: 我们举个简单例子来说明两者的差异，如要制造一个超人，如果使用工厂方法模式，直接产生出来的就是一个力大无穷、能够飞翔、内裤外穿的超人；而如果使用建造者模式，则需要组装手、头、脚、躯干等部分，然后再把内裤外穿，于是一个超人就诞生了。
 
 注意　通过工厂方法模式生产出对象，然后由客户端进行对象的其他操作，但是并不代表所有生产出的对象都必须具有相同的状态和行为，它是由产品所决定。
 
最佳实践
 工厂方法模式和建造者模式都属于对象创建类模式，都用来创建类的对象。但它们之间的区别还是比较明显的。
 ● 意图不同
    1.在工厂方法模式里，我们关注的是一个产品整体，如超人整体，无须关心产品的各部分是如何创建出来的
    2.在建造者模式中，一个具体产品的产生是依赖各个部件的产生以及装配顺序，它关注的是“由零件一步一步地组装出产品对象”
    3.简单地说，工厂模式是一个对象创建的粗线条应用，建造者模式则是通过细线条勾勒出一个复杂对象，关注的是产品组成部分的创建过程
 ● 产品的复杂度不同
    1.工厂方法模式创建的产品一般都是单一性质产品，如成年超人，都是一个模样
    2.建造者模式创建的则是一个复合产品，它由各个部件复合而成，部件不同产品对象当然不同
    3.这不是说工厂方法模式创建的对象简单，而是指它们的粒度大小不同。一般来说，工厂方法模式的对象粒度比较粗，建造者模式的产品对象粒度比较细。
 
 Q:两者的区别有了，那在具体的应用中，我们该如何选择呢？
 A:是用工厂方法模式来创建对象，还是用建造者模式来创建对象，这完全取决于我们在做系统设计时的意图，如果需要详细关注一个产品部件的生产、安装步骤，则选择建造者，否则选择工厂方法模式
 
 抽象工厂模式VS建造者模式
  1.抽象工厂模式实现对产品家族的创建，一个产品家族是这样的一系列产品：具有不同分类维度的产品组合，采用抽象工厂模式则是不需要关心构建过程，只关心什么产品由什么工厂生产即可
  2.建造者模式则是要求按照指定的蓝图建造产品，它的主要目的是通过组装零配件而产生一个新产品，两者的区别还是比较明显的
 example: 现代化的汽车工厂能够批量生产汽车（不考虑手工打造的豪华车）。不同的工厂生产不同的汽车，宝马工厂生产宝马牌子的车，奔驰工厂生产奔驰牌子的车。车不仅具有不同品牌，还有不同的用途分类，如商务车Van，运动型车SUV等，我们按照两种设计模式分别实现车辆的生产过程。
 最佳实践
    1.注意看上面的描述，我们在抽象工厂模式中使用“工厂”来描述构建者，而在建造者模式中使用“车间”来描述构建者
    2.抽象工厂模式就好比是一个一个的工厂，宝马车工厂生产宝马SUV和宝马VAN，奔驰车工厂生产奔驰车SUV和奔驰VAN，它是从一个更高层次去看对象的构建，具体到工厂内部还有很多的车间，如制造引擎的车间、装配引擎的车间等，但这些都是隐藏在工厂内部的细节，对外不公布
    3.也就是对领导者来说，他只要关心一个工厂到底是生产什么产品的，不用关心具体怎么生产
    4.建造者模式就不同了，它是由车间组成，不同的车间完成不同的创建和装配任务，一个完整的汽车生产过程需要引擎制造车间、引擎装配车间的配合才能完成，它们配合的基础就是设计蓝图，而这个蓝图是掌握在车间主任（导演类）手中，它给建造车间什么蓝图就能生产什么产品，建造者模式更关心建造过程
    5.虽然从外界看来一个车间还是生产车辆，但是这个车间的转型是非常快的，只要重新设计一个蓝图，即可产生不同的产品，这有赖于建造者模式的功劳。
    6.相对来说，抽象工厂模式比建造者模式的尺度要大，它关注产品整体，而建造者模式关注构建过程，因此建造者模式可以很容易地构建出一个崭新的产品，只要导演类能够提供具体的工艺流程
    7.两者的应用场景截然不同，如果希望屏蔽对象的创建过程，只提供一个封装良好的对象，则可以选择抽象工厂方法模式。而建造者模式可以用在构件的装配方面，如通过装配不同的组件或者相同组件的不同顺序，可以产生出一个新的对象，它可以产生一个非常灵活的架构，方便地扩展和维护系统
 */

#import "Client.h"
#import "SuperManFactory.h"
#import "Director.h"
#import "SuperMan.h"

#import "BenzFactory.h"
#import "BMWFactory.h"
#import "ICar.h"

#import "ICar2.h"
#import "Director2.h"

@implementation Client

+ (void)execute
{
    /*
     建立了一个超人生产工厂，年复一年地生产超人，对于具体生产出的产品，不管是成年超人还是未成年超人，都是一个模样：深蓝色紧身衣、胸前S标记、内裤外穿，没有特殊的地方。但是我们的目的达到了——生产出超人，拯救全人类，这就是我们的意图。具体怎么生产、怎么组装，这不是工厂方法模式要考虑的，也就是说，工厂模式关注的是一个产品整体，生产出的产品应该具有相似的功能和架构。
     */
//    id<ISuperMan> adultSuperMan = [SuperManFactory createSuperMan:@"adult"];
//    [adultSuperMan specialTalent];
    
    /*
     这个场景类的写法与工厂方法模式是相同的，但是你可以看到，在建立超人的过程中，建造者必须关注超人的各个部件，而工厂方法模式则只关注超人的整体，这就是两者的区别。
     */
//    SuperMan *adultSuperMan2 = [Director fetchAdultSuperMan];
//    NSLog(@"%@", [adultSuperMan2 specialTalent]);
    
    /*
     抽象工厂
     1.对外界调用者来说，只要更换一个具备相同结构的对象，即可发生非常大的改变，如我们原本使用BenzFactory生产汽车，但是过了一段时间后，我们的系统需要生产宝马汽车，这对系统来说不需要很大的改动，只要把工厂类使用BMWFactory代替即可，立刻可以生产出宝马车，
     2.注意这里生产的是一辆完整的车，对于一个产品，只要给出产品代码（车类型）即可生产，抽象工厂模式把一辆车认为是一个完整的、不可拆分的对象。
     3.它注重完整性，一个产品一旦找到一个工厂生产，那就是固定的型号，不会出现一个宝马工厂生产奔驰车的情况。
     4.那现在的问题是我们就想要一辆混合的车型，如奔驰的引擎，宝马的车轮，那该怎么处理呢？使用我们的建造者模式！
     */
//    id<ICarFactory> carFactory = [BenzFactory new];
//    id<ICar> benzSuv = [carFactory createSuv];
//    NSLog(@"%@ %@", [benzSuv getBand], [benzSuv getModel]);
    
    /*
     建造者
     1.按照建造者模式设计一个生产车辆需要把车辆进行拆分，拆分成引擎和车轮两部分，然后由建造者进行建造，想要什么车，你只要有设计图纸就成，马上可以制造一辆车出来。它注重的是对零件的装配、组合、封装，它从一个细微构件装配角度看待一个对象。
     2.注意最后一个运行结果片段，我们可以立刻生产出一辆混合车型，只要有设计蓝图，这非常容易实现。反观我们的抽象工厂模式，它是不可能实现该功能的，因为它更关注的是整体，而不关注到底用的是奔驰引擎还是宝马引擎，而我们的建造者模式却可以很容易地实现该设计，市场信息变更了，我们就可以立刻跟进，生产出客户需要的产品。
     */
    Director2 *director2 = [Director2 new];
    
    id<ICar2> benzSuv = [director2 createBenzSuv];
    NSLog(@"%@", [benzSuv toString]);
    
    id<ICar2> bmwVan = [director2 createBMWVan];
    NSLog(@"%@", [bmwVan toString]);
    
    id<ICar2> complexCar = [director2 createComplexCar];
    NSLog(@"%@", [complexCar toString]);
}

@end
