//
//  Projects.swift
//  Tracker
//
//  Created by Chris Bata on 11/2/20.
//

import SwiftUI

struct ProjectsView: View {
    let showClosedProjects: Bool
    let projects: FetchRequest<Project>
    
    init(showClosedProjects: Bool) {
        self.showClosedProjects = showClosedProjects
        
        projects = FetchRequest<Project>(entity: Project.entity(),
            sortDescriptors: [
            NSSortDescriptor(keyPath: \Project.creationDate, ascending: false)
            ], predicate: NSPredicate(format: "closed = %d", showClosedProjects))
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Projects_Previews: PreviewProvider {
    static var previews: some View {
        ProjectsView(showClosedProjects: false )
    }
}
