//
//  Root.h
//  CompositeDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IRoot.h"

NS_ASSUME_NONNULL_BEGIN

//根节点的实现(之后分析中这没用了)
@interface Root : NSObject <IRoot>

+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithName:(NSString *)name
                    position:(NSString *)position
                      salary:(NSInteger)salary;

@end

NS_ASSUME_NONNULL_END
