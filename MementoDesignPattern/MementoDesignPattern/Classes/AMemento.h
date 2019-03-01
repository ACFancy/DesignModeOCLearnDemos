//
//  AMemento.h
//  MementoDesignPattern
//
//  Created by User on 2019/3/1.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IMemento.h"

NS_ASSUME_NONNULL_BEGIN

@interface AMemento : NSObject

+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithState:(NSString *)state;

- (void)setState:(NSString *)state;

- (NSString *)state;

//多状态
- (instancetype)initWithStateMap:(NSMutableDictionary *)stateMap;

- (NSMutableDictionary *)stateMap;

- (void)setStateMap:(NSMutableDictionary *)stateMap;

@end

NS_ASSUME_NONNULL_END
