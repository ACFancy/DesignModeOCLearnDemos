//
//  GroupLeader.m
//  LeastKnowledgePrinciple
//
//  Created by User on 8/31/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "GroupLeader.h"

#import "Girl.h"

@interface GroupLeader() {
    @private
    NSSet<Girl *> *_listGirls;
}

@end

@implementation GroupLeader

- (instancetype)initWithListGirls:(NSSet<Girl *> *)listGirls {
    if (self = [super init]) {
        _listGirls = listGirls;
    }
    return self;
}

- (void)countGirls {
    NSLog(@"%s%zd\n", __FUNCTION__, _listGirls.count);
}

@end
