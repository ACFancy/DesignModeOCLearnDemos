//
//  Context.m
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Context.h"

@interface Context ()

@property (nonatomic, strong) id<IAlgorithm> algorithm;

@end

@implementation Context

#pragma mark - init Methods
- (instancetype)initWithAgorithm:(id<IAlgorithm>)algorithm
{
    if (self = [super init]) {
        _algorithm = algorithm;
    }
    return self;
}

#pragma mark - Public Methods
- (BOOL)compressWithSource:(NSString *)source to:(NSString *)to
{
    return [_algorithm compressWithSource:source to:to];
}

- (BOOL)uncompressWithSource:(NSString *)source to:(NSString *)to
{
    return [_algorithm uncompressWithSource:source to:to];
}

@end
