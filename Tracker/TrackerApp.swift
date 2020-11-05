//
//  TrackerApp.swift
//  Tracker
//
//  Created by Chris Bata on 10/31/20.
//

import SwiftUI

@main
struct TrackerApp: App {
    @StateObject var dataController: DataController
    
    init() {
        let dataController = DataController()
        _dataController = StateObject(wrappedValue: dataController)
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}
