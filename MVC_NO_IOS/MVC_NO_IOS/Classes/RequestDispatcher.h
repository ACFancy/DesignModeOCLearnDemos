//
//  RequestDispatcher.h
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class HttpServletRequest, HttpServletResponse;
@interface RequestDispatcher : NSObject

- (void)forward:(HttpServletRequest *)request response:(HttpServletResponse *)response;

@end

NS_ASSUME_NONNULL_END
