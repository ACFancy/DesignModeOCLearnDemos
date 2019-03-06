//
//  MultiThread.h
//  FlyWeightDesignPattern
//
//  Created by User on 2019/3/6.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class SignInfo;
@interface MultiThread : NSThread

- (instancetype)initWithInfo:(SignInfo *)signInfo;

@end

NS_ASSUME_NONNULL_END
