//
//  Client.m
//  DecoratorDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Client.h"
#import "FouthGradeSchoolReport.h"
#import "SugarFourthGradeSchoolReport.h"
#import "HighScoreDecorator.h"
#import "SortDecorator.h"
#import "ConcreteDecorator1.h"
#import "ConcreteDecorator2.h"
#import "ConcreteComponent.h"
/*
  盒子套盒子，可以无限套下去。 有点像http通信的协议往下走的思路。 洋葱模式
 在面向对象的设计中，如果超过两层继承，你就应该想想是不是出设计问题了，是不是应该重新找一条康庄大道了，这是经验值，不是什么绝对的，继承层次越多以后的维护成本越多，问题这么多，那怎么办？好办，我们定义一批专门负责装饰的类，然后根据实际情况来决定是否需要进行装饰
 增加一个抽象类和两个实现类，其中Decorator的作用是封装SchoolReport类，如果大家还记得代理模式，那么很容易看懂这个类图，装饰类的作用也就是一个特殊的代理类，真实的执行者还是被代理的角色FouthGradeSchoolReport
 
 装饰模式
    动态地给一个对象添加一些额外的职责。就增加功能来说，装饰模式相比生成子类更为灵活。
 有四个角色
 ● Component抽象构件
    Component是一个接口或者是抽象类，就是定义我们最核心的对象，也就是最原始的对象，如上面的成绩单。
    注意　在装饰模式中，必然有一个最基本、最核心、最原始的接口或抽象类充当Component抽象构件。
 ● ConcreteComponent 具体构件
    ConcreteComponent是最核心、最原始、最基本的接口或抽象类的实现，你要装饰的就是它。
 ● Decorator装饰角色
    一般是一个抽象类，做什么用呢？实现接口或者抽象方法，它里面可不一定有抽象的方法呀，在它的属性里必然有一个private变量指向Component抽象构件。
 ● 具体装饰角色
    ConcreteDecoratorA和ConcreteDecoratorB是两个具体的装饰类，你要把你最核心的、最原始的、最基本的东西装饰成其他东西，上面的例子就是把一个比较平庸的成绩单装饰成家长认可的成绩单。
 
 装饰模式的优点
    ● 装饰类和被装饰类可以独立发展，而不会相互耦合。换句话说，Component类无须知道Decorator类，Decorator类是从外部来扩展Component类的功能，而Decorator也不用知道具体的构件。
    ● 装饰模式是继承关系的一个替代方案。我们看装饰类Decorator，不管装饰多少层，返回的对象还是Component，实现的还是is-a的关系。
    ● 装饰模式可以动态地扩展一个实现类的功能，这不需要多说，装饰模式的定义就是如此。
 装饰模式的缺点
    对于装饰模式记住一点就足够了：多层的装饰是比较复杂的。为什么会复杂呢？你想想看，就像剥洋葱一样，你剥到了最后才发现是最里层的装饰出现了问题，想象一下工作量吧，因此，尽量减少装饰类的数量，以便降低系统的复杂度。
 装饰模式的使用场景
    ● 需要扩展一个类的功能，或给一个类增加附加功能。
    ● 需要动态地给一个对象增加功能，这些功能可以再动态地撤销。
    ● 需要为一批的兄弟类进行改装或加装功能，当然是首选装饰模式。
 最佳实践
    装饰模式是对继承的有力补充。你要知道继承不是万能的，继承可以解决实际的问题，但是在项目中你要考虑诸如易维护、易扩展、易复用等，而且在一些情况下（比如上面那个成绩单例子）你要是用继承就会增加很多子类，而且灵活性非常差，那当然维护也不容易了，也就是说装饰模式可以替代继承，解决我们类膨胀的问题。
    同时，你还要知道继承是静态地给类增加功能，而装饰模式则是动态地增加功能，在上面的那个例子中，我不想要SortDecorator这层的封装也很简单，于是直接在Father中去掉就可以了，如果你用继承就必须修改程序。
    装饰模式还有一个非常好的优点：扩展性非常好。
    在一个项目中，你会有非常多的因素考虑不到，特别是业务的变更，不时地冒出一个需求，尤其是提出一个令项目大量延迟的需求时，那种心情是相当的难受！
    装饰模式可以给我们很好的帮助，通过装饰模式重新封装一个类，而不是通过继承来完成，简单点说，三个继承关系Father、Son、GrandSon三个类，我要在Son类上增强一些功能怎么办？我想你会坚决地顶回去！
    不允许，对了，为什么呢？你增强的功能是修改Son类中的方法吗？增加方法吗？对GrandSon的影响呢？特别是GrandSon有多个的情况，你会怎么办？这个评估的工作量就够你受的，所以这是不允许的，那还是要解决问题的呀，怎么办？通过建立SonDecorator类来修饰Son，相当于创建了一个新的类，这个对原有程序没有变更，通过扩展很好地完成了这次变更。
 */

@implementation Client

+ (void)execute
{
//    SchoolReport *report = [FouthGradeSchoolReport new];
//    [report report];
//    [report sign:@"不满，已阅"];
    /*
     通过继承确实能够解决这个问题，老爸看成绩单很开心，然后就给签字了，但现实的情况是很复杂的，可能老爸听我汇报最高成绩后，就直接乐开花了，直接签名了，后面的排名就没必要看了，或者老爸要先看排名情况，那怎么办？继续扩展？你能扩展多少个类？这还是一个比较简单的场景，一旦需要装饰的条件非常多，比如20个，你还通过继承来解决，你想象的子类有多少个？你是不是马上就要崩溃了！
     */
//    SugarFourthGradeSchoolReport *sugarReport = [SugarFourthGradeSchoolReport new];
//    [sugarReport report];
//    [sugarReport sign:@"满意，已阅"];
    
    //装饰模式
    /*
     想想看，如果我还要增加其他的修饰条件，是不是就非常容易了，只要实现Decorator类就可以了！这就是装饰模式。
     */
//    SchoolReport *sr;
//    sr = [FouthGradeSchoolReport new];
//    sr = [[HighScoreDecorator alloc] initWithReport:sr];
//    sr = [[SortDecorator alloc] initWithReport:sr];
//    [sr report];
//    [sr sign:@"哈哈哈哈"];
    
    
    /*
     注意　原始方法和装饰方法的执行顺序在具体的装饰类是固定的，可以通过方法重载实现多种执行顺序
     模拟高层模块的耦合关系，看看装饰模式是如何运行的
     */
    AComponent *component = [ConcreteComponent new];
    //第一次修饰
    component = [[ConcreteDecorator1 alloc] initWithComponent:component];
    //第二次修饰
    component = [[ConcreteDecorator2 alloc] initWithComponent:component];
    //修饰后运行
    [component operate];
}

@end
