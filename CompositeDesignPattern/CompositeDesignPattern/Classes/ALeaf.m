//
//  ALeaf.m
//  CompositeDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ALeaf.h"

@implementation ALeaf
//可以覆写父类方法
//- (void)operation
//{
//}

////透明模式
////树叶节点继承了Component抽象类，不想让它改变有点难，它必须实现三个抽象方法，怎么办？好办，给个空方法 为什么要加个Deprecated注解呢？就是在编译器期告诉调用者，你可以调我这个方法，但是可能出现错误哦，我已经告诉你“该方法已经失效”了，你还使用那在运行期也会抛出UnsupportedOperationException异常。
//- (void)add:(Component *)component
//{
//    @throw [NSException exceptionWithName:@"UnsupportErrorDomain" reason:@"unsupport" userInfo:nil];
//}
//
//- (void)remove:(Component *)component
//{
//    @throw [NSException exceptionWithName:@"UnsupportErrorDomain" reason:@"unsupport" userInfo:nil];
//}
//
//- (NSMutableArray *)fetchChildren
//{
//    @throw [NSException exceptionWithName:@"UnsupportErrorDomain" reason:@"unsupport" userInfo:nil];
//}

@end
