//
//  Women.h
//  ChainOfResponsibilityDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IWomen.h"

NS_ASSUME_NONNULL_BEGIN

@interface Women : NSObject <IWomen>

- (instancetype)initWithType:(NSInteger)type request:(NSString *)request;

@end

NS_ASSUME_NONNULL_END
