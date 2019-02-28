//
//  Branch.m
//  CompositeDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Branch.h"

@interface Branch ()

@property (nonatomic, strong) NSMutableArray *subordinateList;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *position;
@property (nonatomic, assign) NSInteger salary;

@end

@implementation Branch

- (instancetype)initWithName:(NSString *)name
                    position:(NSString *)position
                      salary:(NSInteger)salary
{
//    if (self = [super init]) {
//        _name = name;
//        _position = position;
//        _salary = salary;
//        _subordinateList = [NSMutableArray array];
//    }
//    return self;
    if (self = [super initWithName:name position:position salary:salary]) {
        _subordinateList = [NSMutableArray array];
    }
    return self;
}

//- (void)addLeaf:(id<ILeaf>)leaf
//{
//    if (leaf) {
//        [_subordinateList addObject:leaf];
//    }
//}
//
//- (void)addBranch:(id<IBranch>)branch
//{
//    if (branch) {
//        [_subordinateList addObject:branch];
//    }
//}

//- (void)add:(id<ICorp>)crop
//{
//    if (crop) {
//        [_subordinateList addObject:crop];
//    }
//}

- (void)add:(Corp *)crop
{
    if (crop) {
        //设置父节点
        [crop setParent:self];
        [_subordinateList addObject:crop];
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
