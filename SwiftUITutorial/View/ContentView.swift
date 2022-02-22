//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by taichi on 2022/02/05.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection,
                content:  {
                    CategoryHome().tag(Tab.featured)
                        .tabItem {
                            Label("Landmarks", systemImage: "star")
                        }
                    LandmarkList().tag(Tab.list)
                        .tabItem {
                            Label("List", systemImage: "list.bullet")
                        }
                })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
