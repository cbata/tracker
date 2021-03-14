//
//  TrackerTests.swift
//  TrackerTests
//
//  Created by Chris Bata on 3/13/21.
//

import CoreData
import XCTest
@testable import Tracker

class BaseTestCase: XCTestCase {
    var dataController: DataController!
    var managedObjectContext: NSManagedObjectContext!

    override func setUpWithError() throws {
        dataController = DataController(inMemory: true)
        managedObjectContext = dataController.container.viewContext
    }
}
