//
//  Client.m
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/20.
//  Copyright © 2019 User. All rights reserved.
//
/*
 规格模式 （组合-《整体部分》 策略-《对不同算法的分别封装，用于便于算法的替换》）
    1.方法名称都是这四个，它是把组合模式更加具体化了，放在一个更狭小的应用空间中。我们再仔细看看，还能不能找到其他模式的身影？
      对，策略模式，每个规格书都是一个策略，它完成了一系列逻辑的封装，用年龄相等的规格书替换年龄大于指定年龄的规格书上层逻辑有什么改变吗？不需要任何改变
    2.规格模式非常重要，它巧妙地实现了对象筛选功能
 最佳实践
    1.我们在例子中多次提到规格两个字，该实现模式就叫做规格模式（Specification Pattern），它不属于23个设计模式，它是其中一个模式的扩展，是哪个模式呢？
    2.我们用全局的观点思考一下，基类代表的是所有的规格书，它的目的是描述一个完整的、可组合的规格书，它代表的是一个整体，
      其下的And规格书、Or规格书、Not规格书、年龄大于基准年龄规格书等都是一个真实的实现，也就是一个局部，现在我们又回
      到了整体和部分的关系了，那这是什么模式？对，组合模式，它是组合模式的一种特殊应用
    3.为什么在通用类图中把方法名称都定义出来呢？是因为只要使用规格模式，方法名称都是这四个，它是把组合模式更加具体化了，
      放在一个更狭小的应用空间中。我们再仔细看看，还能不能找到其他模式的身影？对，策略模式，每个规格书都是一个策略，
      它完成了一系列逻辑的封装，用年龄相等的规格书替换年龄大于指定年龄的规格书上层逻辑有什么改变吗？不需要任何改变
 一个接口、一个抽象类、3个实现类只要在适用规格模式的地方都完全相同，不用做任何的修改，大家闭着眼照抄就成，要修改的是下面的规格书——业务规格书
 
 1.规格模式已经是一个非常具体的应用框架了（相对于23个设计模式）
 2.大家遇到类似多个对象中筛选查找，或者业务规则不适于放在任何已有实体或值对象中，而且规则的变化和组合会掩盖那些领域对象的基本含义，
   或者是想自己编写一个类似LINQ的语言工具的时候就可以照搬这部分代码，只要实现自己的逻辑规格书即可
 
 */

#import "Client.h"
#import "User.h"
#import "UserProvider.h"
#import "UserByAgeThan.h"
#import "UserByNameLike.h"

#import "CompositeSpecification.h"

#import "ABizSpecification.h"

@implementation Client

+ (void)execute
{
//    NSMutableArray *userList = [NSMutableArray array];
//    [userList addObject:[[User alloc] initWithName:@"XX" age:3]];
//    [userList addObject:[[User alloc] initWithName:@"XY" age:8]];
//    [userList addObject:[[User alloc] initWithName:@"XA" age:10]];
//    [userList addObject:[[User alloc] initWithName:@"XB" age:15]];
//    [userList addObject:[[User alloc] initWithName:@"XC" age:18]];
//    [userList addObject:[[User alloc] initWithName:@"XBD" age:20]];
//    [userList addObject:[[User alloc] initWithName:@"XE" age:25]];
//    [userList addObject:[[User alloc] initWithName:@"XF" age:30]];
//    [userList addObject:[[User alloc] initWithName:@"XBG" age:35]];
//    [userList addObject:[[User alloc] initWithName:@"XBH" age:40]];
//    id<IUserProvider> userProvider = [[UserProvider alloc] initWithUserList:userList];
//    for (User *u in [userProvider findUserByAgeThan:20]) {
//        NSLog(@"%@", u);
//    }

    /*
     规格模式
     */
//    id<IUserSpecification> userSpec = [[UserByAgeThan alloc] initWithAge:20];
//    for (User *u in [userProvider findUser:userSpec]) {
//        NSLog(@"%@", u);
//    }
    
//    id<IUserSpecification> likeUserSpec = [[UserByNameLike alloc] initWithNameLike:@"B"];
//    for (User *u in [userProvider findUser:likeUserSpec]) {
//        NSLog(@"%@", u);
//    }
    
//    id<IUserSpecification> spec = [[UserByAgeThan alloc] initWithAge:25];
//    id<IUserSpecification> spec2 = [[UserByNameLike alloc] initWithNameLike:@"B"];
//    for (User *user in [userProvider findUser:[spec AND:spec2]]) {
//        NSLog(@"%@", user);
//    }
    
    /*
     规格模式模板
     */
    NSMutableArray *list = [NSMutableArray array];
    id<ISpecification> spec1 = [[ABizSpecification alloc] initWithObj:[NSObject new]];
    id<ISpecification> spec2 = [[ABizSpecification alloc] initWithObj:[NSObject new]];
    for (NSObject *obj in list) {
        if ([[spec1 AND:spec2] isSatisfiedBy:obj]) {
            NSLog(@"%@", obj);
        }
    }
}

@end
