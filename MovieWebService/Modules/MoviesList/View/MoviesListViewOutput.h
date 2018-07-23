//
//  MoviesListViewOutput.h
//  MovieWebService
//
//
//  Copyright © 2018 TestCompany. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Film.h"

@protocol MoviesListViewOutput <NSObject>

- (void)didTriggerViewReadyEvent;
- (void)setViewForSetup:(UIView *)view;
- (void)setData:(Film *)film;

@end
