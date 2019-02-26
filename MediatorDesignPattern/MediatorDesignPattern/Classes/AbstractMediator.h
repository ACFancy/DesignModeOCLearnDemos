//
//  AbstractMediator.h
//  MediatorDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Purchase, Sale, Stock;
@interface AbstractMediator : NSObject

@property (nonatomic, strong) Purchase *purchase;
@property (nonatomic, strong) Sale *sale;
@property (nonatomic, strong) Stock *stock;


- (void)execute:(NSString *)str objects:(nullable NSArray *)objects;

@end

NS_ASSUME_NONNULL_END
