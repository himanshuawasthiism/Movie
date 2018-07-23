//
//  MoviesListPresenter.h
//  MovieWebService
//
//
//  Copyright © 2018 TestCompany. All rights reserved.
//

#import "MoviesListViewOutput.h"
#import "MoviesListInteractorOutput.h"
#import "MoviesListModuleInput.h"

@protocol MoviesListViewInput;
@protocol MoviesListInteractorInput;
@protocol MoviesListRouterInput;

@interface MoviesListPresenter : NSObject <MoviesListModuleInput, MoviesListViewOutput, MoviesListInteractorOutput>

@property (nonatomic, strong) id<MoviesListViewInput> view;
@property (nonatomic, strong) id<MoviesListInteractorInput> interactor;
@property (nonatomic, strong) id<MoviesListRouterInput> router;

@end
