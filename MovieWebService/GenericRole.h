//
//  GenericRole.h
//  MovieWebService
//
//
//  Copyright © 2018 TestCompany. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Film;

@interface GenericRole : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *biography;
@property (nonatomic, strong) NSDate *dateOfBirth;
@property (nonatomic) BOOL nominated;

// Why atomic?
@property (atomic, weak) Film *film;

- (id)initWithData:(NSDictionary *)data;

@end
