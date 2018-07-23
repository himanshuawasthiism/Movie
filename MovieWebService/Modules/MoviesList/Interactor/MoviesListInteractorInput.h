//
//  MoviesListInteractorInput.h
//  MovieWebService
//
//
//  Copyright © 2018 TestCompany. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol MoviesListInteractorInput <NSObject>
- (void)setViewForSetup:(UIView *)view;
- (void)setData:(NSArray *)films;
@end
