//
//  AdvTemplate.h
//  ProtoTypeDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//广告信模板
@interface AdvTemplate : NSObject

- (NSString *)fetchAdvSubject;

- (NSString *)fetchAdvContext;

@end

NS_ASSUME_NONNULL_END
