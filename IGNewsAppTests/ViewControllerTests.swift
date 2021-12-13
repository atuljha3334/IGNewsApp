//
//  ViewControllerTests.swift
//  IGNewsAppTests
//
//  Created by Atul Jha on 12/12/21.
//

import XCTest
@testable import IGNewsApp

class ViewControllerTests: XCTestCase {
    
    var viewController: ViewController!
    var newsDataModel: NewsResponseModel!
    
    override func setUp() {
        viewController = ViewController()
    }
    
    override func tearDown() {
        viewController = nil
    }
    
    func testControllerInitSuccessFully() {
        XCTAssertNotNil(viewController)
    }
    
    func testSetupUI() {
        XCTAssertNotNil(viewController.setupUI)
    }
    
    func testButtonActions() {
        XCTAssertNotNil(viewController.onClickButtonFour(_:))
        XCTAssertNotNil(viewController.onClickButtonThree(_:))
        XCTAssertNotNil(viewController.onClickButtonTwo(_:))
        XCTAssertNotNil(viewController.onClickButtonOne(_:))
    }
    
    func testBreakingNewsAvailability() {
        viewController.newsData = NewsResponseModel(breakingNews: "", topNews: [], dailyBriefings: DailyBriefings(eu: [], asia: [], us: []), technicalAnalysis: [], specialReport: [])
        XCTAssertNotNil(viewController.viewDidLoad())
    }
}
