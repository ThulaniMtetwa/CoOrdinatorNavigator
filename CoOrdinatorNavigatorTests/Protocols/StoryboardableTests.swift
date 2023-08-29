//
//  StoryboardableTests.swift
//  CoOrdinatorNavigatorTests
//
//  Created by Thulani Mtetwa on 2023/08/25.
//

import Foundation
import XCTest

@testable import CoOrdinatorNavigator

class StoryboardableTests: XCTestCase {
    
    
    func testInitialViewControllerLoads() {
        let viewController = InitialViewController.instantiate()
        XCTAssertNotNil(viewController)
    }
}
