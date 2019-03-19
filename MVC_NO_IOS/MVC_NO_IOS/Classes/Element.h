//
//  Element.h
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Attribute, VisitorSupport;
@interface Element : NSObject

- (Attribute *)attribute:(NSString *)attName;

- (NSString *)getText;

- (void)accept:(VisitorSupport *)visitor;

@end

NS_ASSUME_NONNULL_END
