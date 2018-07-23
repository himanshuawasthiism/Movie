//
//  DetailsRouterTests.swift
//  MovieWebService
//
//
//  Copyright © 2018 TestCompany. All rights reserved.
//

import XCTest

@testable
import MovieWebService

class DetailsRouterTests: XCTestCase {

    var router: DetailsRouter!
    var viewController: MockViewController!

    override func setUp() {
        super.setUp()
		
        viewController = MockViewController()
		
        router = DetailsRouter()
        router.viewController = viewController
    }

    override func tearDown() {
        viewController = nil
        router = nil

        super.tearDown()
    }
	
    // MARK: - Mock
	
    class MockViewController: DetailsViewController {
	
    } 
	
}
