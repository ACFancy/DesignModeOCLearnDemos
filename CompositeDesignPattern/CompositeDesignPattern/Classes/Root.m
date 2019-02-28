//
//  Root.m
//  CompositeDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Root.h"

@interface Root ()

@property (nonatomic, strong) NSMutableArray *subordinateList;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *position;
@property (nonatomic, assign) NSInteger salary;

@end

@implementation Root

- (instancetype)initWithName:(NSString *)name
                    position:(NSString *)position
                      salary:(NSInteger)salary
{
    if (self = [super init]) {
        _name = name;
        _position = position;
        _salary = salary;
        _subordinateList = [NSMutableArray array];
    }
    return self;
}

- (void)addBranch:(id<IBranch>)branch
{
    if (branch) {
        [_subordinateList addObject:branch];
    }
}

- (void)addLeaf:(id<ILeaf>)leaf
{
    if (leaf) {
        [_subordinateList addObject:leaf];
    }
}

- (NSString *)fetchInfo
{
    return [NSString stringWithFormat:@"名称：%@\t职位：%@\t薪水：%ld", _name, _position, _salary];
}

- (NSMutableArray *)fetchSubordinateInfo
{
    return _subordinateList;
}

@end
