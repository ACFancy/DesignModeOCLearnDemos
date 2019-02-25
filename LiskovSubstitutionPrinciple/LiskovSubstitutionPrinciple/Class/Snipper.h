//
//  Snipper.h
//  LiskovSubstitutionPrinciple
//
//  Created by User on 8/30/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "Soldier.h"

NS_ASSUME_NONNULL_BEGIN

@class AUG;
@interface Snipper : NSObject

- (void)setGun:(AUG *)gun;

- (void)killEnemy;

@end

NS_ASSUME_NONNULL_END
