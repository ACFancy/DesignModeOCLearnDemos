//
//  Context.h
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IAlgorithm.h"

NS_ASSUME_NONNULL_BEGIN

@interface Context : NSObject

+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithAgorithm:(id<IAlgorithm>)algorithm;

- (BOOL)compressWithSource:(NSString *)source to:(NSString *)to;

- (BOOL)uncompressWithSource:(NSString *)source to:(NSString *)to;

@end

NS_ASSUME_NONNULL_END
