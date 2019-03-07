//
//  Crop.h
//  BridgeDesignPattern
//
//  Created by User on 2019/3/7.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//抽象公司
@class Product;
@interface Corp : NSObject

- (instancetype)initWithProduct:(Product *)product;

- (void)produce;

- (void)sell;

- (void)makeMoney;

@end

NS_ASSUME_NONNULL_END
