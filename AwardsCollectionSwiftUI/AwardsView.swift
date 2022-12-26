//
//  AwardsView.swift
//  AwardsCollectionSwiftUI
//
//  Created by Armen Madoyan on 26.12.2022.
//

import SwiftUI

struct AwardsView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    PathView()
                        .frame(width: 200, height: 200)
                }
            }
            .navigationTitle("Awards")
            
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
