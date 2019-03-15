//
//  AbsMediator.h
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/14.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ISalary.h"
#import "IPosition.h"
#import "ITax.h"

NS_ASSUME_NONNULL_BEGIN

@class AbsColleague;
@interface AbsMediator : NSObject

@property (nonatomic, strong) id<ISalary> salary;
@property (nonatomic, strong) id<IPosition> position;
@property (nonatomic, strong) id<ITax> tax;

- (void)upWithSalary:(id<ISalary>)salary;

- (void)downWithSalary:(id<ISalary>)salary;

- (void)upWithPosition:(id<IPosition>)position;

- (void)downWithPosition:(id<IPosition>)position;

- (void)upWithTax:(id<ITax>)tax;

- (void)downWithTax:(id<ITax>)tax;

@end

NS_ASSUME_NONNULL_END
