//
//  Soldier.h
//  LiskovSubstitutionPrinciple
//
//  Created by User on 8/30/18.
//  Copyright © 2018 User. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AbstractGun;
NS_ASSUME_NONNULL_BEGIN

@interface Soldier : NSObject

- (void)setGun:(id<AbstractGun>)gun;

- (void)killEnemy;

@end

NS_ASSUME_NONNULL_END
