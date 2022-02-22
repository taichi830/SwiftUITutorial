//
//  SwiftUITutorial.swift
//  SwiftUITutorial
//
//  Created by taichi on 2022/02/22.
//

import SwiftUI

@main
struct SwiftUITutorial: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
