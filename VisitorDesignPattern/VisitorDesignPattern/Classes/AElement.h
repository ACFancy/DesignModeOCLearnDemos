//
//  AElement.h
//  VisitorDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IAVisitor.h"

NS_ASSUME_NONNULL_BEGIN

@interface AElement : NSObject

//定义业务逻辑
- (void)doSomething;

//允许谁来访问
- (void)accept:(id<IAVisitor>)visitor;

@end

NS_ASSUME_NONNULL_END
