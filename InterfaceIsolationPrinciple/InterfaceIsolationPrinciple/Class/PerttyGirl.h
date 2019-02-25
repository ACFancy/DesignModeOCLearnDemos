//
//  PerttyGirl.h
//  InterfaceIsolationPrinciple
//
//  Created by User on 8/31/18.
//  Copyright © 2018 User. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Interface.h"

@interface PerttyGirl : NSObject <IGoodBodyGirl, IGreateTemperamentGirl>

- (instancetype)initWithName:(NSString *)name;

@end
