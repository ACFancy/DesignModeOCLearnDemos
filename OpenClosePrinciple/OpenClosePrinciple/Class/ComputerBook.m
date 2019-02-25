//
//  ComputerBook.m
//  OpenClosePrinciple
//
//  Created by User on 8/31/18.
//  Copyright © 2018 User. All rights reserved.
//
//接口或抽象类一旦定义，就应该立即执行，不能有修改接口的思想，除非是彻底的大返工。
//要实现对扩展开放，首要的前提条件就是抽象约束。
#import "ComputerBook.h"

@interface ComputerBook() {
@private
    NSString *_name;
    NSInteger _price;
    NSString *_author;
    NSString *_scope;
}

@end

@implementation ComputerBook

#pragma mark - init Methods
- (instancetype)initWithName:(NSString *)name
                       price:(NSInteger)price
                      author:(NSString *)author
                       scope:(NSString *)scope
{
    if (self = [super init]) {
        _name = name;
        _price = price;
        _author = author;
        _scope = scope;
    }
    return self;
}

#pragma mark - Protocol Methods
- (NSString *)getScope {
    return _scope;
}


- (NSString *)getName {
    return _name;
}

- (NSInteger)getPrice {
    return _price;
}

- (NSString *)getAuthor {
    return _author;
}

@end
