//
//  ValueStackHelper.h
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class ValueStack, ServletRequest;
@interface ValueStackHelper : NSObject

- (ValueStack *)putIntoStack:(ServletRequest *)req;

+ (ValueStack *)getValueStack;

@end

NS_ASSUME_NONNULL_END
