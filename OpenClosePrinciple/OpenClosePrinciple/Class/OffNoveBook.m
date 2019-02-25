//
//  OffNoveBook.m
//  OpenClosePrinciple
//
//  Created by User on 8/31/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "OffNoveBook.h"

@implementation OffNoveBook

///扩展 开闭原则对扩展开放，对修改关闭，并不意味着不做任何修改，低层模块的变更，必然要有高层模块进行耦合，否则就是一个孤立无意义的代码片段
- (NSInteger)getPrice {
    NSInteger selfPrice = [super getPrice];
    NSInteger offPrice = 0;
    if (selfPrice > 40) {
        offPrice = selfPrice * 0.9;
    } else {
        offPrice = selfPrice * 0.8;
    }
    return offPrice;
}

@end
