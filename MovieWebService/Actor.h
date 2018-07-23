//
//  Actor.h
//  MovieWebService
//
//
//  Copyright © 2018 TestCompany. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GenericRole.h"

@interface Actor : GenericRole

@property (nonatomic, strong) NSString *screenName;

- (id)initWithData:(NSDictionary *)data;

@end
