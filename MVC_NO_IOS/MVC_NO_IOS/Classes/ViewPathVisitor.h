//
//  ViewPathVisitor.h
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import "VisitorSupport.h"

NS_ASSUME_NONNULL_BEGIN

//访问者
@interface ViewPathVisitor : VisitorSupport

- (NSString *)viewPath;

- (instancetype)initWithResult:(NSString *)result;

@end

NS_ASSUME_NONNULL_END
