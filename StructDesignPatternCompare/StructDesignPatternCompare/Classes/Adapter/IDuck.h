
//
//  IDuck.h
//  StructDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef IDuck_h
#define IDuck_h

//AbsTarget
@protocol IDuck <NSObject>

- (void)cry;

- (void)desAppearance;

- (void)desBehavior;

@end

#endif /* IDuck_h */
