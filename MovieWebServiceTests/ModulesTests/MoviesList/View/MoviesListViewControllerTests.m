//
//  MoviesListViewControllerTests.m
//  MovieWebService
//
//
//  Copyright © 2018 TestCompany. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "MoviesListViewController.h"

#import "MoviesListViewOutput.h"

@interface MoviesListViewControllerTests : XCTestCase

@property (nonatomic, strong) MoviesListViewController *controller;

@property (nonatomic, strong) id mockOutput;

@end

@implementation MoviesListViewControllerTests

- (void)setUp {
    [super setUp];

    self.controller = [[MoviesListViewController alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(MoviesListViewOutput));

    self.controller.output = self.mockOutput;
}

- (void)tearDown {
    self.controller = nil;

    self.mockOutput = nil;

    [super tearDown];
}

- (void)testThatControllerNotifiesPresenterOnDidLoad {
	// given

	// when
	[self.controller viewDidLoad];

	// then
	OCMVerify([self.mockOutput didTriggerViewReadyEvent]);
}

@end
