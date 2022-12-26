//
//  PathView.swift
//  AwardsCollectionSwiftUI
//
//  Created by Armen Madoyan on 26.12.2022.
//

import SwiftUI

struct PathView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let farPoint = size * 0.9
            let notFarPoint = size * 0.8
            let nearPoint = size * 0.1
            let notNearPoint = size * 0.2
            let eightyPoint = size * 0.4
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearPoint))
                path.addLine(to: CGPoint(x: farPoint, y: eightyPoint))
                path.addLine(to: CGPoint(x: notFarPoint, y: eightyPoint))
                path.addLine(to: CGPoint(x: notFarPoint, y: farPoint))
                path.addLine(to: CGPoint(x: notNearPoint, y: farPoint))
                path.addLine(to: CGPoint(x: notNearPoint, y: eightyPoint))
                path.addLine(to: CGPoint(x: nearPoint, y: eightyPoint))
            }
            .fill(Color.brown)
            
            Path { path in
                path.move(to: CGPoint(x: notNearPoint + 20, y: nearPoint))
                path.addLine(to: CGPoint(x: notNearPoint + 20, y: notNearPoint + 20))
            }
            .stroke(Color.brown, style: StrokeStyle(lineWidth: nearPoint))
            
            Image(systemName: "door.left.hand.closed")
                .resizable()
                .frame(width: notNearPoint, height: eightyPoint)
                .scaleEffect(nearPoint / 18)
                .offset(x: size / 4, y: size / 2.1)
            
            Image(systemName: "window.casement.closed")
                .resizable()
                .foregroundColor(Color.white)
                .frame(width: notNearPoint, height: notNearPoint)
                .scaleEffect(nearPoint / 15)
                .offset(x: size / 1.9, y: size / 2.2)
        }
    }
}

struct PathView_Previews: PreviewProvider {
    static var previews: some View {
        PathView()
            .frame(width: 200, height: 200)
    }
}
