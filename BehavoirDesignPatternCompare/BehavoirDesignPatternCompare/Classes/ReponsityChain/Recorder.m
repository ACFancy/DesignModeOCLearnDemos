//
//  Recorder.m
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/13.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Recorder.h"

@implementation Recorder

- (NSString *)description
{
    return [NSString stringWithFormat:@"域名：%@\nIP地址：%@\n解析者：%@", self.domain, self.ip, self.owner];
}

@end
