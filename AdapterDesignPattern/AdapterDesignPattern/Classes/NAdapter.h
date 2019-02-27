//
//  NAdapter.h
//  AdapterDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Target.h"
#import "Adaptee1.h"
#import "Adaptee2.h"

NS_ASSUME_NONNULL_BEGIN

//适配器的通用代码也比较简单，把原有的继承关系变更为关联关系就可以了
@interface NAdapter : NSObject <Target>

- (instancetype)initWithAdaptee1:(Adaptee1 *)adaptee1 adaptee2:(Adaptee2*)adaptee2;

@end

NS_ASSUME_NONNULL_END
