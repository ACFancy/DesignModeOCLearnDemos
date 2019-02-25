//
//  ComputerBook.h
//  OpenClosePrinciple
//
//  Created by User on 8/31/18.
//  Copyright © 2018 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Interface.h"

@interface ComputerBook : NSObject <IComputerBook>

- (instancetype)initWithName:(NSString *)name
                       price:(NSInteger)price
                      author:(NSString *)author
                       scope:(NSString *)scope;

@end
