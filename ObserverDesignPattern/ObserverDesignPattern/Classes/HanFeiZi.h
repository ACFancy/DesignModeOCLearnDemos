//
//  HanFeiZi.h
//  ObserverDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IHanFeiZi.h"
#import "Observable.h"

NS_ASSUME_NONNULL_BEGIN

@class LiSi;
@interface HanFeiZi : NSObject <IHanFeiZi, Observable>

@property (nonatomic, assign) BOOL isHavingBreakFast;
@property (nonatomic, assign) BOOL isHavingFun;

@end

NS_ASSUME_NONNULL_END
