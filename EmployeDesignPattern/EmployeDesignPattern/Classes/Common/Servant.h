//
//  Servant.h
//  EmployeDesignPattern
//
//  Created by User on 2019/3/27.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IServiced.h"

//功能定义完毕后，我们需要由一个雇工来执行这些功能。简单地说，就是需要有一个执行者，可以把一组功能聚集起来

NS_ASSUME_NONNULL_BEGIN

@interface Servant : NSObject

- (void)service:(id<IServiced>)serviceFuture;

@end

NS_ASSUME_NONNULL_END
