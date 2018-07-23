//
//  MoviesListViewController.h
//  MovieWebService
//
//
//  Copyright © 2018 TestCompany. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MoviesListViewInput.h"
#import "Film.h"

@protocol MoviesListViewOutput;

@interface MoviesListViewController : UIViewController <MoviesListViewInput> {
    Film *film;
}

@property (nonatomic, strong) id<MoviesListViewOutput> output;

@end
