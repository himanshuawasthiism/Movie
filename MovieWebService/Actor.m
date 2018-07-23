//
//  Actor.m
//  MovieWebService
//
//
//  Copyright © 2018 TestCompany. All rights reserved.
//

#import "Actor.h"

@implementation Actor

- (id)initWithData:(NSDictionary *)data {
    self = [super init];
    if (self) {
        self.screenName = [data objectForKey:@"screenName"];
    }
    return self;
}

@end
