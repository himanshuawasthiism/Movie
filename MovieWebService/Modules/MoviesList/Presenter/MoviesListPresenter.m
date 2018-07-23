//
//  MoviesListPresenter.m
//  MovieWebService
//
//
//  Copyright © 2018 TestCompany. All rights reserved.
//

#import "MoviesListPresenter.h"

#import "MoviesListViewInput.h"
#import "MoviesListInteractorInput.h"
#import "MoviesListRouterInput.h"

@implementation MoviesListPresenter {
    NSArray *films;
}

- (void)configureModule {
 }

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
}

- (void)setViewForSetup:(UIView *)view {
    [self.interactor setViewForSetup:view];
}

- (void)setData:(Film *)film {
    films = [NSArray arrayWithObject:film];
    [self.interactor setData:films];
}

@end
