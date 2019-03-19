//
//  Element.m
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import "Element.h"
#import "Attribute.h"
#import "VisitorSupport.h"

@implementation Element

- (Attribute *)attribute:(NSString *)attName
{
    return [Attribute new];
}

- (NSString *)getText
{
    return @"";
}

- (void)accept:(VisitorSupport *)visitor
{
    [visitor visit:self];
}

@end
