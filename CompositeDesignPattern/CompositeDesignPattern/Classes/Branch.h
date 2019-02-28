//
//  Branch.h
//  CompositeDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

//#import <Foundation/Foundation.h>
//#import "IBranch.h"
#import "Corp.h"

NS_ASSUME_NONNULL_BEGIN

@interface Branch : Corp//NSObject <IBranch>

//+ (instancetype)new NS_UNAVAILABLE;
//
//- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithName:(NSString *)name
                    position:(NSString *)position
                      salary:(NSInteger)salary;

- (void)add:(Corp *)crop;

- (NSMutableArray *)fetchSubordinateInfo;
//减少很多工作量了，接口没有了，改成抽象类了，IBranch接口也没有了，直接把方法放到了实现类中了，太精简了
@end

NS_ASSUME_NONNULL_END
