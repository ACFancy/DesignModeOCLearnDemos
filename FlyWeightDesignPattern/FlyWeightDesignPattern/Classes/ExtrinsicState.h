//
//  ExtrinsicState.h
//  FlyWeightDesignPattern
//
//  Created by User on 2019/3/6.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ExtrinsicState : NSObject <NSCopying>

@property (nonatomic, strong) NSString *location;
@property (nonatomic, strong) NSString *subject;

@end

NS_ASSUME_NONNULL_END
