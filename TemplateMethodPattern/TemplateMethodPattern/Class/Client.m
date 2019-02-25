//
//  Client.m
//  TemplateMethodPattern
//
//  Created by User on 9/6/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "Client.h"
#import "HummerH3Model.h"
#import "HummerH4Model.h"
#import "ConcreteClass1.h"
#import "ConcreteClass2.h"

@implementation Client

+ (void)execute {
    int alarm = 0;
//    NSScanner *scanner = [NSScanner scannerWithString:@"请输入\n"];
//    while (![scanner isAtEnd]) {
//        [scanner scanInt:&alarm];
//    }
    HummerH3Model *h3 = [HummerH3Model new];
    [h3 setAlarm:(alarm != 0)];
    [h3 run];
    HummerH4Model *h4 = [HummerH4Model new];
    [h4 run];
    AbstractClass *c1 = [ConcreteClass1 new];
    [c1 templateMethod];
    AbstractClass *c2 = [ConcreteClass2 new];
    [c2 templateMethod];
}

@end
