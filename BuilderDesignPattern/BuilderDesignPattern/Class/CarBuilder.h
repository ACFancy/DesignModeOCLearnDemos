//
//  CarBuilder.h
//  BuilderDesignPattern
//
//  Created by User on 9/13/18.
//  Copyright © 2018 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarModel.h"

@interface CarBuilder : NSObject

- (void)setSequence:(NSArray *)sequence;

- (id<CarModel>)getCarModel;

@end
