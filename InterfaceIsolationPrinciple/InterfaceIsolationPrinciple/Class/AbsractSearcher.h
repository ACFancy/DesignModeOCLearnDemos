//
//  AbsractSearcher.h
//  InterfaceIsolationPrinciple
//
//  Created by User on 8/31/18.
//  Copyright © 2018 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Interface.h"

@interface AbsractSearcher : NSObject

@property (nonatomic, strong, readonly) id<IGoodBodyGirl, IGreateTemperamentGirl> pettyGirl;

- (instancetype)initWithPettyGirl:(id<IGoodBodyGirl, IGreateTemperamentGirl>)pettyGirl;

- (void)show;

@end
