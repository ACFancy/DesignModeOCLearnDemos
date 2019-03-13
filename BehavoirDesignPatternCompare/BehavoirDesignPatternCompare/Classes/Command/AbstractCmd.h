//
//  AbstractCmd.h
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IReceiver.h"

NS_ASSUME_NONNULL_BEGIN

@interface AbstractCmd : NSObject

@property (nonatomic, strong) id<IReceiver> zip;
@property (nonatomic, strong) id<IReceiver> gzip;

- (BOOL)executeWithSource:(NSString *)source to:(NSString *)to;

@end

NS_ASSUME_NONNULL_END
