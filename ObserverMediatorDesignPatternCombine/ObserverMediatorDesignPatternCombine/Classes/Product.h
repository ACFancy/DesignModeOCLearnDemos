//
//  Product.h
//  ObserverMediatorDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class ProductManager;
@interface Product : NSObject <NSCopying>

@property (nonatomic, strong) NSString *name;

- (instancetype)initWithManager:(ProductManager *)manager name:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
