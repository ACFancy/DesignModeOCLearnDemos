//
//  Command.h
//  CommandDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class RequirementGroup, PageGroup, CodeGroup;

@interface Command : NSObject

@property (nonatomic, strong) RequirementGroup *rg;
@property (nonatomic, strong) PageGroup *pg;
@property (nonatomic, strong) CodeGroup *cg;

- (void)execute;

@end

NS_ASSUME_NONNULL_END
