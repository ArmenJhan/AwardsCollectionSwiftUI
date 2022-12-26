//
//  StarterView.swift
//  AwardsCollectionSwiftUI
//
//  Created by Armen Madoyan on 26.12.2022.
//

import SwiftUI

struct StarterView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "desktopcomputer")
                }
            AwardsView()
                .tabItem {
                    Image(systemName: "rosette")
                }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
    }
}
