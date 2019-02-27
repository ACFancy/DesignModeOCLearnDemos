//
//  Adapter.h
//  AdapterDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Adaptee.h"
#import "Target.h"

NS_ASSUME_NONNULL_BEGIN

@interface Adapter : Adaptee <Target>

@end

NS_ASSUME_NONNULL_END
