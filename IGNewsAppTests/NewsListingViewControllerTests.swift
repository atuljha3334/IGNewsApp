//
//  NewsListingViewControllerTests.swift
//  IGNewsAppTests
//
//  Created by USER on 12/12/21.
//

import XCTest
@testable import IGNewsApp

class NewsListingViewControllerTests: XCTestCase {
    var newsListingViewController: NewsListingViewController!
    
    override func setUp() {
        newsListingViewController = NewsListingViewController()
    }
    
    override func tearDown() {
        newsListingViewController = nil
    }

    func testControllerInitSuccessFully() {
        XCTAssertNotNil(newsListingViewController)
    }
    
    func testSegmentSelection() {
        XCTAssertNotNil(newsListingViewController.segmentSelectionAction(_:))
    }
}
