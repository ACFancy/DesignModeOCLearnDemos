//
//  SchoolReport.h
//  DecoratorDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//抽象成绩单
@interface SchoolReport : NSObject

//成绩单主要展示的就是你的成绩情况
- (void)report;

//成绩单要家长签字，这个是最要命的
- (void)sign:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
