//
//  ViewPathVisitor.m
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import "ViewPathVisitor.h"
#import "Element.h"
#import "Attribute.h"

@interface ViewPathVisitor ()

@property (nonatomic, strong) NSString *viewPath;
@property (nonatomic, strong) NSString *result;

@end

@implementation ViewPathVisitor

- (instancetype)initWithResult:(NSString *)result
{
    if (self = [super init]) {
        _result = result;
    }
    return self;
}

#pragma mark - Override
- (void)visit:(Element *)el
{
    Attribute *att = [el attribute:@"name"];
    if (att != nil) {
        if ([[att getName] isEqualToString:@"name"] &&
            [[att getText] isEqualToString:_result]) {
            _viewPath = [el getText];
        }
    }
}



@end
