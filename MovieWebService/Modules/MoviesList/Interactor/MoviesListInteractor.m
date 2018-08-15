//
//  MoviesListInteractor.m
//  MovieWebService
//
//
//  Copyright © 2018 TestCompany. All rights reserved.
//

#import "MoviesListInteractor.h"

#import "MoviesListInteractorOutput.h"
#import "Film.h"
#import "Masonry.h"
#import "AppDelegate.h"
#import "MovieWebService-Swift.h"

@implementation MoviesListInteractor {
    UITableView *tableView;
    NSArray *films;
    UIView *view;
}

- (void)setViewForSetup:(UIView *)view1 {
    view = view1;
    tableView = [UITableView new];
    [view addSubview:tableView];
    tableView.delegate = self;
    tableView.dataSource = self;
}

#pragma mark - MoviesListInteractorInput

- (void)setData:(NSArray *)films1 {
    films = films1;
    [tableView mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(view);
        make.right.mas_equalTo(view);
        make.top.mas_equalTo(view);
        make.bottom.mas_equalTo(view);
    }];

    [tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return films.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"CellTableViewCell";
    CellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"CellTableViewCell" owner:self options:nil] firstObject];
        // cell = self.movieCell;
        //self.movieCell = nil;
    }
    Film *film = [films objectAtIndex:indexPath.row];
    cell.name.text = film.name;

    NSString* dateText;
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"MMM dd, yyyy"];
    dateText = [dateFormat stringFromDate:film.releaseDate];

    cell.date.text = dateText;

    NSString *filmRatingText;
    switch (film.filmRating) {
        case G:
            filmRatingText = @"G";
        case PG:
            filmRatingText = @"PG";
        case PG13:
            filmRatingText = @"PG13";
        case R:
            filmRatingText = @"R";
        default:
            break;
    }
    cell.filmRating.text = filmRatingText;
    cell.rating.text = [[NSNumber numberWithDouble:film.rating] stringValue];

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    Film *film = [films objectAtIndex:indexPath.row];
    [appDelegate.navigationController pushViewController:[DetailsModuleBuilder buildWith:film.director] animated:YES];
}

@end
