//
//  mtgcubeanalyzerApp.swift
//  Shared
//
//  Created by Nathan Christensen on 2020-11-19.
//

import SwiftUI

@main
struct mtgcubeanalyzerApp: App {
    var body: some Scene {
        WindowGroup {
            ArchetypeList().environmentObject(UserData())
        }
    }
}
