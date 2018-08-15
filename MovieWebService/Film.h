//
//  Film.h
//  MovieWebService
//
//
//  Copyright © 2018 TestCompany. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Actor.h"
#import "Director.h"

typedef enum {
    G = 0,
    PG,
    PG13,
    R,
    NC17
} FilmRating;

NS_ASSUME_NONNULL_BEGIN

@interface Film : NSObject

@property (nonatomic) FilmRating filmRating;
@property (weak, nonatomic) NSArray *languages;
@property (weak, nonatomic) NSDate *releaseDate;
@property (strong, nonatomic) NSArray<Actor*> *cast;
@property (nonatomic) BOOL nominated;

- (id)initWithData:(NSDictionary *)data;

@property (nonatomic, strong) NSString *name;
@property (nonatomic) double rating;
@property (nonatomic, strong) Director *director;

@end

NS_ASSUME_NONNULL_END
