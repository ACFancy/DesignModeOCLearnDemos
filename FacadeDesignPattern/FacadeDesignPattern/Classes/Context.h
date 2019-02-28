//
//  Context.h
//  FacadeDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//该封装类的作用就是产生一个业务规则complexMethod，并且它的生存环境是在子系统内，仅仅依赖两个相关的对象，门面对象通过对它的访问完成一个复杂的业务逻辑
@interface Context : NSObject

- (void)complexMethod;

@end

NS_ASSUME_NONNULL_END
