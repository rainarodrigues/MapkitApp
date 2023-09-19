//
//  Poc_2_Map_2App.swift
//  Poc 2 Map 2
//
//  Created by Raina Rodrigues de Lima on 18/09/23.
//

import SwiftUI

@main
struct Poc_2_Map_2App: App {
    
    @StateObject private var vm = LocationsViewModel()

    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
