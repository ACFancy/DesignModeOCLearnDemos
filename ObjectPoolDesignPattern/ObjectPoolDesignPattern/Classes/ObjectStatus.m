//
//  ObjectStatus.m
//  ObjectPoolDesignPattern
//
//  Created by User on 2019/3/27.
//  Copyright © 2019 User. All rights reserved.
//

#import "ObjectStatus.h"

@implementation ObjectStatus

//占用
- (void)setUsing
{
    NSLog(@"%s", __FUNCTION__);
}

//释放
- (void)setFree
{
    //注意：若T是有状态，则需要回归到初始化状态
    NSLog(@"%s", __FUNCTION__);
}

//检查是否可用
- (BOOL)validate
{
    return YES;
}

@end
