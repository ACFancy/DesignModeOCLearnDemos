//
//  GroupLeader.h
//  LeastKnowledgePrinciple
//
//  Created by User on 8/31/18.
//  Copyright © 2018 User. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Girl;
@interface GroupLeader : NSObject

- (instancetype)initWithListGirls:(NSSet<Girl *> *)listGirls;

- (void)countGirls;

@end
