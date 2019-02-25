//
//  NoveBook.h
//  OpenClosePrinciple
//
//  Created by User on 8/31/18.
//  Copyright © 2018 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Interface.h"

@interface NoveBook : NSObject <IBook>

- (instancetype)initWithName:(NSString *)name
                       price:(NSInteger)price
                      author:(NSString *)author;

@end
