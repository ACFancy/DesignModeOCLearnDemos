//
//  Corp.m
//  CompositeDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Corp.h"

@interface Corp ()

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *position;
@property (nonatomic, assign) NSInteger salary;

//避免循环引用，使用了weak
@property (nonatomic, weak) Corp *parent;

@end

@implementation Corp

- (instancetype)initWithName:(NSString *)name
                    position:(NSString *)position
                      salary:(NSInteger)salary
{
    if (self = [super init]) {
        _name = name;
        _position = position;
        _salary = salary;
    }
    return self;
}

- (NSString *)fetchInfo
{
    return [NSString stringWithFormat:@"名称：%@\t职位：%@\t薪水：%ld", _name, _position, _salary];
}

- (void)setParent:(Corp *)parent
{
    self.parent = parent;
}

- (Corp *)fetchParent
{
    return self.parent;
}

@end
