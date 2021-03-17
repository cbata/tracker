//
//  DevelopmentTests.swift
//  TrackerTests
//
//  Created by Chris Bata on 3/16/21.
//

import CoreData
import XCTest
@testable import Tracker

class DevelopmentTests: BaseTestCase {
    func testSampleDataCreationWorks() throws {
        try dataController.createSampleData()

        XCTAssertEqual(dataController.count(for: Project.fetchRequest()), 5, "There should be 5 sample projects")
        XCTAssertEqual(dataController.count(for: Item.fetchRequest()), 50, "There should be 50 sample items")
    }

    func testDeleteSampleDeleteAllDataWorks() throws {
        try dataController.createSampleData()
        dataController.deleteAll()
        XCTAssertEqual(dataController.count(for: Project.fetchRequest()), 0, "deleteAll(): should leave 0 projects")
        XCTAssertEqual(dataController.count(for: Item.fetchRequest()), 0, "deleteAll(): should leave 0 items")
    }
}
