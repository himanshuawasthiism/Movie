//
//  MoviesListInteractor.h
//  MovieWebService
//
//
//  Copyright © 2018 TestCompany. All rights reserved.
//

#import "MoviesListInteractorInput.h"
#import "CellTableViewCell.h"

@protocol MoviesListInteractorOutput;

@interface MoviesListInteractor : NSObject <MoviesListInteractorInput, UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) id<MoviesListInteractorOutput> output;
@property (nonatomic, strong) IBOutlet CellTableViewCell *movieCell;

@end
