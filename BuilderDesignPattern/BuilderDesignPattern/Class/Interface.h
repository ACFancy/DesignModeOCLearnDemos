//
//  Interface.h
//  BuilderDesignPattern
//
//  Created by User on 9/6/18.
//  Copyright © 2018 User. All rights reserved.
//

#ifndef Interface_h
#define Interface_h

@protocol CarModel <NSObject>

- (void)start;

- (void)stop;

- (void)alarm;

- (void)engineBoom;

- (void)run;

- (void)setSequence:(NSArray *)sequence;

@end

@protocol Product <NSObject>

@end

@protocol AbstractBuilder <NSObject>

- (void)setPart;

- (id<Product>)buildProduct;

@end

#endif /* Interface_h */
