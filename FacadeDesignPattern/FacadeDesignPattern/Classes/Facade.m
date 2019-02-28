//
//  Facade.m
//  FacadeDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Facade.h"
#import "ClassA.h"
#import "ClassB.h"
//#import "ClassC.h"
#import "Context.h"

@interface Facade ()

//被委托的对象
@property (nonatomic, strong) ClassA *a;
@property (nonatomic, strong) ClassB *b;
//@property (nonatomic, strong) ClassC *c;
@property (nonatomic, strong) Context *context;

@end

@implementation Facade

- (instancetype)init
{
    if (self = [super init]) {
        _a = [ClassA new];
        _b = [ClassB new];
//        _c = [ClassC new];
        _context = [Context new];
    }
    return self;
}

- (void)methodA
{
    [_a doSomethingA];
}

- (void)methodB
{
    [_b doSomethingB];
}

- (void)methodC
{
////还是非常简单，只是在methodC方法中增加了doSomethingA()方法的调用，可以这样做吗？我相信大部分读者都说可以这样做，而且已经在实际系统开发中这样使用了，我今天告诉各位，这样设计是非常不靠谱的，为什么呢？因为你已经让门面对象参与了业务逻辑，门面对象只是提供一个访问子系统的一个路径而已，它不应该也不能参与具体的业务逻辑，否则就会产生一个倒依赖的问题：子系统必须依赖门面才能被访问，这是设计上一个严重错误，不仅违反了单一职责原则，同时也破坏了系统的封装性
//    [_a doSomethingA];
    //说了这么多，那对于这种情况该怎么处理呢？建立一个封装类，封装完毕后提供给门面对象。
//    [_c doSomethingC];
    /*
     通过这样一次封装后，门面对象又不参与业务逻辑了，在门面模式中，门面角色应该是稳定，它不应该经常变化，一个系统一旦投入运行它就不应该被改变，它是一个系统对外的接口，你变来变去还怎么保证其他模块的稳定运行呢？但是，业务逻辑是会经常变化的，我们已经把它的变化封装在子系统内部，无论你如何变化，对外界的访问者来说，都还是同一个门面，同样的方法——这才是架构师最希望看到的结构。
     */
    [_context complexMethod];
}

@end
