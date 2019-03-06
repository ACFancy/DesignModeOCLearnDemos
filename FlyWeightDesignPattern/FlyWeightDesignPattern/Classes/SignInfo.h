//
//  SignInfo.h
//  FlyWeightDesignPattern
//
//  Created by User on 2019/3/6.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/*
 JAVA: 是一个很简单的POJO对象（Plain Ordinary Java Object，简单Java对象）
 */
@class ExtrinsicState;
@interface SignInfo : NSObject

@property (nonatomic, strong) NSString *iD;
@property (nonatomic, strong) NSString *location;
@property (nonatomic, strong) NSString *subject;
@property (nonatomic, strong) NSString *postAddress;

@property (nonatomic, strong) ExtrinsicState *extrinsicState;

@end

NS_ASSUME_NONNULL_END
