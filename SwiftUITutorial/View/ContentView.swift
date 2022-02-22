//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by taichi on 2022/02/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
