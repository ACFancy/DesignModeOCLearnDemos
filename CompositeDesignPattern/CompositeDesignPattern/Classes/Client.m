//
//  Client.m
//  CompositeDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Client.h"
#import "Root.h"
#import "Branch.h"
#import "Leaf.h"

#import "Composite.h"
#import "ALeaf.h"
/*
 组合模式 (组合模式是对依赖倒转原则的破坏,因为没有面向接口编程，直接面向实现类编程)
    组合模式(Composite Pattern)也叫合成模式，有时又叫做部分-整体模式（Part-Whole），主要是用来描述部分与整体的关系
    将对象组合成树形结构以表示“部分-整体”的层次结构，使得用户对单个对象和组合对象的使用具有一致性
 我们先来说说组合模式的几个角色。
 ● Component抽象构件角色
    定义参加组合对象的共有方法和属性，可以定义一些默认的行为或属性，比如我们例子中的fetchInfo就封装到了抽象类中。
 ● Leaf叶子构件
    叶子对象，其下再也没有其他的分支，也就是遍历的最小单位。
 ● Composite树枝构件
    树枝对象，它的作用是组合树枝节点和叶子节点形成一个树形结构。
 
 组合模式的优点
 ● 高层模块调用简单
    一棵树形机构中的所有节点都是Component，局部和整体对调用者来说没有任何区别，也就是说，高层模块不必关心自己处理的是单个对象还是整个组合结构，简化了高层模块的代码。
 ● 节点自由增加
    使用了组合模式后，我们可以看看，如果想增加一个树枝节点、树叶节点是不是都很容易，只要找到它的父节点就成，非常容易扩展，符合开闭原则，对以后的维护非常有利。
  组合模式的缺点
    组合模式有一个非常明显的缺点，看到我们在场景类中的定义，提到树叶和树枝使用时的定义了吗？直接使用了实现类！这在面向接口编程上是很不恰当的，与依赖倒置原则冲突，读者在使用的时候要考虑清楚，它限制了你接口的影响范围。
 组合模式的使用场景
    ● 维护和展示部分-整体关系的场景，如树形菜单、文件和文件夹管理。
    ● 从一个整体中能够独立出部分模块或功能的场景。
 组合模式的注意事项
    只要是树形结构，就要考虑使用组合模式，这个一定要记住，只要是要体现局部和整体的关系的时候，而且这种关系还可能比较深，考虑一下组合模式吧。
 
 真实的组合模式
    你可以从数据库中直接提取出哪些人要分配到树枝，哪些人要分配到树叶，树枝与树枝、树叶的关系等，这些都是由相关的业务人员维护到数据库中的，通常这里是把数据存放到一张单独的表中
    数据表定义了一个树形结构，我们要做的就是从数据库中把它读取出来，然后展现到前台上，用for循环加上递归就可以完成这个读取。用了数据库后，数据和逻辑已经在表中定义好了，我们直接读取放到树上就可以了，这个还是比较容易做的，大家不妨自己考虑一下。
    这才是组合模式的真实引用，它依靠了关系数据库的非对象存储性能，非常方便地保存了一个树形结构。大家可以在项目中考虑采用，想想看现在还有哪个项目不使用关系型数据库呢
 透明的组合模式
    组合模式有两种不同的实现：透明模式和安全模式，我们上面讲的就是安全模式
    透明模式
    透明模式是把用来组合使用的方法放到抽象类中，比如add()、remove()以及getChildren等方法（顺便说一下，getChildren一般返回的结果为Iterable的实现类，很多，大家可以看JDK的帮助），不管叶子对象还是树枝对象都有相同的结构，通过判断是getChildren的返回值确认是叶子节点还是树枝节点，如果处理不当，这个会在运行期出现问题，不是很建议的方式；安全模式就不同了，它是把树枝节点和树叶节点彻底分开，树枝节点单独拥有用来组合的方法，这种方法比较安全，我们的例子使用了安全模式。
    在透明模式下，遍历整个树形结构是比较容易的，不用进行强制类型转换
● 《《《透明模式的好处就是它基本遵循了依赖倒转原则，方便系统进行扩展。》》
 
 最佳实践
    组合模式在项目中到处都有，比如现在的页面结构一般都是上下结构，上面放系统的Logo，下边分为两部分：左边是导航菜单，右边是展示区，左边的导航菜单一般都是树形的结构，比较清晰，有非常多的JavaScript源码实现了类似的树形菜单，大家可以到网上搜索一下。
    还有，大家常用的XML结构也是一个树形结构，根节点、元素节点、值元素这些都与我们的组合模式相匹配，之所以本章节不以XML为例子讲解，是因为很少有人还直接读写XML文件，一般都是用JDOM或者DOM4J了。
    还有一个非常重要的例子：我们自己本身也是一个树状结构的一个树枝或树叶。根据我能够找到我的父母，根据父亲又能找到爷爷奶奶，根据母亲能够找到外公外婆等，很典型的树形结构，而且还很规范（这个要是不规范那肯定乱套了）。
 */

@implementation Client

+ (void)execute
{
//    id<IRoot> ceo = [[Root alloc] initWithName:@"wang" position:@"manager" salary:100000];
//    id<IBranch> developDep = [[Branch alloc] initWithName:@"liu" position:@"DEV_Manager" salary:10000];
//    id<IBranch> salesDep = [[Branch alloc] initWithName:@"ma" position:@"SALE_Manager" salary:20000];
//    id<IBranch> financeDep = [[Branch alloc] initWithName:@"zhao" position:@"FINANCE_Manager" salary:30000];
//
//    id<IBranch> firstDevGroup = [[Branch alloc] initWithName:@"yang" position:@"DEV_FIRST_GROUPER" salary:5000];
//    id<IBranch> secondDevGroup = [[Branch alloc] initWithName:@"wu" position:@"DEV_SECOND_GROUPER" salary:6000];
//
//    id<ILeaf> a = [[Leaf alloc] initWithName:@"a" position:@"DEV" salary:2000];
//    id<ILeaf> b = [[Leaf alloc] initWithName:@"b" position:@"DEV" salary:2000];
//    id<ILeaf> c = [[Leaf alloc] initWithName:@"c" position:@"DEV" salary:2000];
//    id<ILeaf> d = [[Leaf alloc] initWithName:@"d" position:@"DEV" salary:2000];
//    id<ILeaf> e = [[Leaf alloc] initWithName:@"e" position:@"DEV" salary:2000];
//    id<ILeaf> f = [[Leaf alloc] initWithName:@"f" position:@"DEV" salary:2000];
//    id<ILeaf> h = [[Leaf alloc] initWithName:@"h" position:@"SALE" salary:5000];
//    id<ILeaf> i = [[Leaf alloc] initWithName:@"i" position:@"SALE" salary:4000];
//    id<ILeaf> j = [[Leaf alloc] initWithName:@"j" position:@"FINANCE" salary:5000];
//    id<ILeaf> k = [[Leaf alloc] initWithName:@"k" position:@"CEO_SECRETER" salary:8000];
//    id<ILeaf> liu = [[Leaf alloc] initWithName:@"liu" position:@"DEV_SECOND_MANAGER" salary:20000];
//
//    [ceo addBranch:developDep];
//    [ceo addBranch:salesDep];
//    [ceo addBranch:financeDep];
//
//    [ceo addLeaf:k];
//
//    [developDep addBranch:firstDevGroup];
//    [developDep addBranch:secondDevGroup];
//    [developDep addLeaf:liu];
//
//    [firstDevGroup addLeaf:a];
//    [firstDevGroup addLeaf:b];
//    [firstDevGroup addLeaf:c];
//
//    [secondDevGroup addLeaf:d];
//    [secondDevGroup addLeaf:e];
//    [secondDevGroup addLeaf:f];
//
//    [salesDep addLeaf:h];
//    [salesDep addLeaf:i];
//
//    [financeDep addLeaf:j];
//
//    NSLog(@"%@", [ceo fetchInfo]);
//    [self fetchAllSuboardinateInfo:[ceo fetchSubordinateInfo]];
    
//    Branch *ceo = [self compositeCorpTree];
//    NSLog(@"%@", [ceo fetchInfo]);
//    NSLog(@"%@", [self fetchTreeInfo:ceo]);
    
    /*
     各位可能已经看出一些问题了，组合模式是对依赖倒转原则的破坏，但是它还有其他类型的变形，面向对象就是这么多的形态和变化，请读者继续阅读下去，就会找到解决方案。
     */
    //创建一个根节点
    Composite *root = [Composite new];
    [root operation];
    //创建一个树枝构件
    Composite *branch = [Composite new];
    [root add:branch];
    //创建一个叶子构件
    ALeaf *leaf = [ALeaf new];
    [root add:leaf];
    
    [self display:root];
}

//通过递归遍历树
+ (void)display:(Composite *)root
{
    NSMutableArray *childrens = [root fetchChildren];
    for (Component *c in childrens) {
        if ([c isMemberOfClass:[ALeaf class]]) {
            [c operation];
        } else {
            [self display:(Composite *)c];
        }
    }
}

+ (Branch *)compositeCorpTree
{
    Branch *ceo = [[Branch alloc] initWithName:@"wang" position:@"manager" salary:100000];
    Branch *developDep = [[Branch alloc] initWithName:@"liu" position:@"DEV_Manager" salary:10000];
    Branch *salesDep = [[Branch alloc] initWithName:@"ma" position:@"SALE_Manager" salary:20000];
    Branch *financeDep = [[Branch alloc] initWithName:@"zhao" position:@"FINANCE_Manager" salary:30000];
    
    Branch *firstDevGroup = [[Branch alloc] initWithName:@"yang" position:@"DEV_FIRST_GROUPER" salary:5000];
    Branch *secondDevGroup = [[Branch alloc] initWithName:@"wu" position:@"DEV_SECOND_GROUPER" salary:6000];
    
    Leaf *a = [[Leaf alloc] initWithName:@"a" position:@"DEV" salary:2000];
    Leaf *b = [[Leaf alloc] initWithName:@"b" position:@"DEV" salary:2000];
    Leaf *c = [[Leaf alloc] initWithName:@"c" position:@"DEV" salary:2000];
    Leaf *d = [[Leaf alloc] initWithName:@"d" position:@"DEV" salary:2000];
    Leaf *e = [[Leaf alloc] initWithName:@"e" position:@"DEV" salary:2000];
    Leaf *f = [[Leaf alloc] initWithName:@"f" position:@"DEV" salary:2000];
    Leaf *h = [[Leaf alloc] initWithName:@"h" position:@"SALE" salary:5000];
    Leaf *i = [[Leaf alloc] initWithName:@"i" position:@"SALE" salary:4000];
    Leaf *j = [[Leaf alloc] initWithName:@"j" position:@"FINANCE" salary:5000];
    Leaf *k = [[Leaf alloc] initWithName:@"k" position:@"CEO_SECRETER" salary:8000];
    Leaf *liu = [[Leaf alloc] initWithName:@"liu" position:@"DEV_SECOND_MANAGER" salary:20000];
    
    [ceo add:developDep];
    [ceo add:salesDep];
    [ceo add:financeDep];
    
    [ceo add:k];
    
    [developDep add:firstDevGroup];
    [developDep add:secondDevGroup];
    [developDep add:liu];
    
    [firstDevGroup add:a];
    [firstDevGroup add:b];
    [firstDevGroup add:c];
    
    [secondDevGroup add:d];
    [secondDevGroup add:e];
    [secondDevGroup add:f];
    
    [salesDep add:h];
    [salesDep add:i];
    
    [financeDep add:j];
    return ceo;
}

+ (NSString *)fetchTreeInfo:(Branch *)root
{
    NSMutableArray *suboardinateList = [root fetchSubordinateInfo];
    NSMutableString *info = [NSMutableString string];
    for (id corp in suboardinateList) {
        if ([corp isMemberOfClass:[Leaf class]]) {
            [info appendFormat:@"%@\n", [corp fetchInfo]];
        } else {
            [info appendFormat:@"%@\n%@", [corp fetchInfo], [self fetchTreeInfo:corp]];
        }
    }
    return info.copy;
}

+ (void)fetchAllSuboardinateInfo:(NSMutableArray *)suboardinateList
{
//    for (NSObject *obj in suboardinateList) {
//        if ([obj isMemberOfClass:[Leaf class]]) {
//            id<ILeaf> empolyee = (id<ILeaf>)obj;
//            NSLog(@"%@", [empolyee fetchInfo]);
//        } else {
//            id<IBranch> branch = (id<IBranch>)obj;
//            NSLog(@"%@", [branch fetchInfo]);
//            [self fetchAllSuboardinateInfo:[branch fetchSubordinateInfo]];
//        }
//    }
    
    for (NSObject *obj in suboardinateList) {
        if ([obj isMemberOfClass:[Leaf class]]) {
            Leaf *empolyee = (Leaf *)obj;
            NSLog(@"%@", [empolyee fetchInfo]);
        } else {
            Branch *branch = (Branch *)obj;
            NSLog(@"%@", [branch fetchInfo]);
            [self fetchAllSuboardinateInfo:[branch fetchSubordinateInfo]];
        }
    }
}

@end
