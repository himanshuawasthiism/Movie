//
//  MoviesListRouter.h
//  MovieWebService
//
//
//  Copyright © 2018 TestCompany. All rights reserved.
//

#import "MoviesListRouterInput.h"

@class UIViewController;

@interface MoviesListRouter : NSObject <MoviesListRouterInput>

@property (nonatomic, weak) UIViewController *viewController;

@end
