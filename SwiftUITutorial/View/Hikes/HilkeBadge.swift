//
//  HilkeBadge.swift
//  SwiftUITutorial
//
//  Created by taichi on 2022/02/23.
//

import SwiftUI

struct HilkeBadge: View {
    var name: String
    
    var body: some View {
        VStack(alignment: .center){
            Badge()
                .frame(width: 300, height: 300)
                .scaleEffect(1.0 / 3.0)
                .frame(width: 100, height: 100)
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for \(name).")
            
            
        }
    }
}

struct HilkeBadge_Previews: PreviewProvider {
    static var previews: some View {
        HilkeBadge(name: "Preview Testing")
    }
}
