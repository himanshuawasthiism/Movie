//
//  TappableLabel.h
//  MovieWebService
//
//
//  Copyright © 2018 TestCompany. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol TappableLabelDelegate;

@interface TappableLabel : UILabel

@property (nonatomic, strong) id<TappableLabelDelegate> delegate;

@end

@protocol TappableLabelDelegate <NSObject>

@optional

- (void)didReceiveTouch;

@end
