//
//  ITax.h
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/14.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef ITax_h
#define ITax_h

@protocol ITax <NSObject>

- (void)raise;

- (void)drop;

@end

#endif /* ITax_h */
