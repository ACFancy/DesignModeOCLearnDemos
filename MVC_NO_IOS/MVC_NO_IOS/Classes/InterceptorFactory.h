//
//  InterceptorFactory.h
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//工厂方法模式
@interface InterceptorFactory : NSObject

+ (NSArray *)createInterceptors;

@end

NS_ASSUME_NONNULL_END
