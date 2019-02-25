//
//  Interface.h
//  TemplateMethodPattern
//
//  Created by User on 9/6/18.
//  Copyright © 2018 User. All rights reserved.
//

#ifndef Interface_h
#define Interface_h

@protocol HummerModel <NSObject>

- (void)start;

- (void)stop;

- (void)alarm;

- (void)engineBoom;

- (void)run;

@optional
- (BOOL)isAlarm;

@end

@protocol AbstractClass <NSObject>

- (void)doSomething;

- (void)doAnything;

//注意　为了防止恶意的操作，一般模板方法都加上final关键字，不允许被覆写。
- (void)templateMethod;

@end

#endif /* Interface_h */
