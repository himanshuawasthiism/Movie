//
//  DetailsViewTests.swift
//  MovieWebService
//
//
//  Copyright © 2018 TestCompany. All rights reserved.
//

import XCTest

@testable
import MovieWebService

class DetailsViewTests: XCTestCase {

    var output: MockOutput!
    var viewController: DetailsViewController!
	
    override func setUp() {
        super.setUp()

        output = MockOutput()
		
        viewController = DetailsViewController()
        viewController.output = output
    }

    override func tearDown() {
        output = nil
        viewController = nil
		
        super.tearDown()
    }

    func testIfViewIsReady() {
        //given
        let mock = MockOutput()

        //when 
        mock.viewIsReady()

        //then
        XCTAssertTrue(mock.viewIsReadyDidCall)
    }

    // MARK: - Mock

    class MockOutput: DetailsViewOutput {
        var viewIsReadyDidCall: Bool = false

        func viewIsReady() {
            viewIsReadyDidCall = true
        }
		
    }
}
