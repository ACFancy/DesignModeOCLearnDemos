//
//  ConcreteTarget.h
//  AdapterDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Target.h"

NS_ASSUME_NONNULL_BEGIN

//标角色的实现类
@interface ConcreteTarget : NSObject <Target>

@end

NS_ASSUME_NONNULL_END
