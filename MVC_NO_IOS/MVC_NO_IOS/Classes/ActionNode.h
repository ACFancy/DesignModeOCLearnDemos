//
//  ActionNode.h
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ActionNode : NSObject



- (NSString *)actionName;

- (NSString *)actionClass;

- (NSString *)methodName;

- (NSString *)getView:(NSString *)result;

@end

NS_ASSUME_NONNULL_END
