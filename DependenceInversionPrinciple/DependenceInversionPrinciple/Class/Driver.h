//
//  Driver.h
//  DependenceInversionPrinciple
//
//  Created by User on 8/31/18.
//  Copyright © 2018 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Interface.h"

@interface Driver : NSObject <IDriver>

- (instancetype)initWithCar:(id<ICar>)car;

@end
