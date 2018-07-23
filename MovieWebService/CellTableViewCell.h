//
//  CellTableViewCell.h
//  MovieWebService
//
//
//  Copyright © 2018 TestCompany. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CellTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UILabel *date;
@property (strong, nonatomic) IBOutlet UILabel *filmRating;
@property (strong, nonatomic) IBOutlet UILabel *rating;

@end
