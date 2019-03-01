//
//  Memento.h
//  MementoDesignPattern
//
//  Created by User on 2019/3/1.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//备忘录
@interface Memento : NSObject

+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithState:(NSString *)state;

- (void)setState:(NSString *)state;

- (NSString *)state;

@end

NS_ASSUME_NONNULL_END
