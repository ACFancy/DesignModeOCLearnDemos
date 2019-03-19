//
//  Filter.h
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#ifndef Filter_h
#define Filter_h

@class ServletRequest, ServletResponse, FilterChain;
@protocol Filter <NSObject>

- (void)doFilter:(ServletRequest *)request
         reponse:(ServletResponse *)response
           chain:(FilterChain *)chain;

@end

#endif /* Filter_h */
