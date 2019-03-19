//
//  HttpServletRequest.m
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import "HttpServletRequest.h"
#import "RequestDispatcher.h"

@implementation HttpServletRequest

- (RequestDispatcher *)getRequestDispatcher:(NSString *)viewPath
{
    return [RequestDispatcher new];
}

@end
