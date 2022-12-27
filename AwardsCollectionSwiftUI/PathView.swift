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
            let nearPoint = size * 0.1
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearPoint))
                path.addLine(to: CGPoint(x: farPoint, y: middle - nearPoint))
                path.addLine(to: CGPoint(x: farPoint - nearPoint, y: middle - nearPoint))
                path.addLine(to: CGPoint(x: farPoint - nearPoint, y: farPoint))
                path.addLine(to: CGPoint(x: nearPoint * 2, y: farPoint))
                path.addLine(to: CGPoint(x: nearPoint * 2, y: middle - nearPoint))
                path.addLine(to: CGPoint(x: nearPoint, y: middle - nearPoint))
            }
            .fill(Color(red: 0.7, green: 0.4, blue: 0))
            
            Path { path in
                path.move(to: CGPoint(x: nearPoint * 3, y: nearPoint))
                path.addLine(to: CGPoint(x: nearPoint * 3, y: nearPoint * 3))
            }
            .stroke(Color(red: 0.7, green: 0.4, blue: 0), style: StrokeStyle(lineWidth: nearPoint))
            
            Image(systemName: "door.left.hand.closed")
                .resizable()
                .scaleEffect(nearPoint / 65)
                .offset(x: -size / 7, y: size / 4.1)
            
            Image(systemName: "window.casement.closed")
                .resizable()
                .foregroundColor(Color.white)
                .scaleEffect(nearPoint / 75)
                .offset(x: size / 6.5, y: size / 9)
        }
    }
}

struct PathView_Previews: PreviewProvider {
    static var previews: some View {
        PathView()
            .frame(width: 200, height: 200)
    }
}
