//
//  Servant.m
//  EmployeDesignPattern
//
//  Created by User on 2019/3/27.
//  Copyright © 2019 User. All rights reserved.
//

#import "Servant.h"

@implementation Servant

- (void)service:(id<IServiced>)serviceFuture
{
    [serviceFuture serviced];
}

@end
