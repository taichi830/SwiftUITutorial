//
//  ProfileHost.swift
//  SwiftUITutorial
//
//  Created by taichi on 2022/02/23.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    @EnvironmentObject var modelData: ModelData
    @State private var defaultProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            HStack {
                if editMode?.wrappedValue == .active {
                    Button("Cancel") {
                        defaultProfile = modelData.profile
                        editMode?.animation().wrappedValue = .inactive
                    }
                }
                Spacer()
                EditButton()
            }
            
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $defaultProfile)
                    .onAppear {
                        defaultProfile = modelData.profile
                    }
                    .onDisappear {
                        modelData.profile = defaultProfile
                    }
            }
            
        }
        .padding()
        
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
            .environmentObject(ModelData())
    }
}
