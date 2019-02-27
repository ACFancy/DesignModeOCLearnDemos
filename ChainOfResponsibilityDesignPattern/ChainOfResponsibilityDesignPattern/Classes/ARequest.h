//
//  ARequest.h
//  ChainOfResponsibilityDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ALevel.h"

NS_ASSUME_NONNULL_BEGIN

@interface ARequest : NSObject

@property (nonatomic, strong) ALevel *level;

- (ALevel *)fetchRequestLevel;

@end

NS_ASSUME_NONNULL_END
