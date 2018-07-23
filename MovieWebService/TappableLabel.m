//
//  TappableLabel.m
//  MovieWebService
//
//
//  Copyright © 2018 TestCompany. All rights reserved.
//

#import "TappableLabel.h"

@implementation TappableLabel

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.userInteractionEnabled = YES;
    }
    return self;
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    CGPoint touchPoint = [[touches anyObject] locationInView:self];
    BOOL selected = (CGRectContainsPoint(self.bounds, touchPoint));

    if (selected) {
        [self.delegate didReceiveTouch];
    }
}

@end
