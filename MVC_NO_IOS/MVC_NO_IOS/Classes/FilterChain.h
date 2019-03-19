//
//  FilterChain.h
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
//责任链模式
@class ServletRequest, ServletResponse;
@interface FilterChain : NSObject

- (void)doFilter:(ServletRequest *)request response:(ServletResponse *)response;

@end

NS_ASSUME_NONNULL_END
