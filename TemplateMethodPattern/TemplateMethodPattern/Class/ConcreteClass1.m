//
//  ConcreteClass1.m
//  TemplateMethodPattern
//
//  Created by User on 9/6/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "ConcreteClass1.h"

@implementation ConcreteClass1

- (void)doSomething {
    NSLog(@"%@%s\n", self.description, __FUNCTION__);
}

- (void)doAnything {
    NSLog(@"%@%s\n", self.description, __FUNCTION__);
}

@end
