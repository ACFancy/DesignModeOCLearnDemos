//
//  HttpServletRequest.h
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import "ServletRequest.h"

NS_ASSUME_NONNULL_BEGIN

@class RequestDispatcher;
@interface HttpServletRequest : ServletRequest

- (RequestDispatcher *)getRequestDispatcher:(NSString *)viewPath;

@end

NS_ASSUME_NONNULL_END
