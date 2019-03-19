//
//  XmlActionNode.h
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import "ActionNode.h"

NS_ASSUME_NONNULL_BEGIN

@class Element;
@interface XmlActionNode : ActionNode

- (instancetype)initWithElement:(Element *)el;

@end

NS_ASSUME_NONNULL_END
