//
//  Proxy.h
//  ProxyDesignPattern
//
//  Created by User on 2019/2/22.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Subject.h"

NS_ASSUME_NONNULL_BEGIN

@interface Proxy : NSObject <Subject>

- (instancetype)initWithSubject:(id<Subject>)subject;

@end

NS_ASSUME_NONNULL_END
