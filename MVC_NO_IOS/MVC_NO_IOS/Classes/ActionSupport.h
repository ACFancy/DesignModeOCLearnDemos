//
//  ActionSupport.h
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

FOUNDATION_EXTERN NSString *const SUCCESS;
FOUNDATION_EXTERN NSString *const FAIL;

@interface ActionSupport : NSObject

- (NSString *)execute;

@end

NS_ASSUME_NONNULL_END
