//
//  Recorder.h
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/13.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Recorder : NSObject

@property (nonatomic, strong) NSString *domain;
@property (nonatomic, strong) NSString *ip;
@property (nonatomic, strong) NSString *owner;

@end

NS_ASSUME_NONNULL_END
