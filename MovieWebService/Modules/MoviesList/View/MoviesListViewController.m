//
//  MoviesListViewController.m
//  MovieWebService
//
//
//  Copyright © 2018 TestCompany. All rights reserved.
//

#import "MoviesListViewController.h"

#import "MoviesListViewOutput.h"
#import "AppDelegate.h"
#import "Film.h"

@implementation MoviesListViewController

#pragma mark - Life cycle

- (void)viewDidLoad {
	[super viewDidLoad];

    [self.output didTriggerViewReadyEvent];
    [self.output setViewForSetup:self.view];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    [appDelegate getFilmWithCallback:^(Film *film) {
        [self.output setData:film];
    }];
}

#pragma mark - MoviesListViewInput

- (void)setupInitialState {
    self.navigationItem.title = @"Root View Controller";
    self.view.backgroundColor = [UIColor whiteColor];
}

@end
