//
//  MoviesListRouterTests.m
//  MovieWebService
//
//
//  Copyright © 2018 TestCompany. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "MoviesListRouter.h"

@interface MoviesListRouterTests : XCTestCase

@property (nonatomic, strong) MoviesListRouter *router;

@end

@implementation MoviesListRouterTests

- (void)setUp {
    [super setUp];

    self.router = [[MoviesListRouter alloc] init];
}

- (void)tearDown {
    self.router = nil;

    [super tearDown];
}

@end
