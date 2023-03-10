//
//  MainView.swift
//  AwardsCollectionSwiftUI
//
//  Created by Armen Madoyan on 26.12.2022.
//

import SwiftUI

struct MainView: View {
    @State private var isShowing = false
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                Text(isShowing ? "Hide Award" : "Show Award")
                Spacer()
                Image(systemName: "chevron.up.square")
                    .scaleEffect(isShowing ? 2 : 1)
                    .rotationEffect(.degrees(isShowing ? 0 : 180))
            }
            
            Spacer()
            
            if isShowing {
                PathView()
                    .frame(width: 200, height: 200)
                    .transition(.animation)
            }
            
            Spacer()
        }
        .font(.headline)
        .padding()
    }
    
    private func buttonAction() {
        withAnimation {
            isShowing.toggle()
        }
    }
}

extension AnyTransition {
    static var animation: AnyTransition {
        
        let insertion = AnyTransition.slide
            .combined(
                with: .scale.combined(
                    with: .opacity.combined(
                        with: .move(edge: .top)
                    )
                )
            )
        
        let removal = AnyTransition.slide
            .combined(
                with: .scale.combined(
                    with: .opacity.combined(
                        with: .move(edge: .top)
                    )
                )
            )
        
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
