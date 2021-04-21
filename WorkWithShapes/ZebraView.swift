//
//  ZebraView.swift
//  WorkWithShapes
//
//  Created by Irina Moiseeva on 13.04.2021.
//

import SwiftUI

struct ZebraView: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                
                let size = min(geometry.size.width, geometry.size.height)
                let middle = size / 2
                
                Path { path in
                    path.move(to: CGPoint(x: 0, y: middle))
                    path.addLine(to: CGPoint(x: size, y: middle))
                    path.addLine(to: CGPoint(x: size, y: middle + (middle * 0.03)))
                    path.addLine(to: CGPoint(x: 0, y: middle + (middle * 0.03)))
                }
                .fill(Color(.black))
                
                Path { path in
                    path.move(to: CGPoint(x: 0, y: middle + (middle * 0.16)))
                    path.addLine(to: CGPoint(x: size, y: middle + (middle * 0.16)))
                    path.addLine(to: CGPoint(x: size, y: middle + (middle * 0.21)))
                    path.addLine(to: CGPoint(x: 0, y: middle + (middle * 0.21)))
                }
                .fill(Color(.black))
                
                Path { path in
                    path.move(to: CGPoint(x: 0, y: middle + (middle * 0.32)))
                    path.addLine(to: CGPoint(x: size, y: middle + (middle * 0.32)))
                    path.addLine(to: CGPoint(x: size, y: middle + (middle * 0.4)))
                    path.addLine(to: CGPoint(x: 0, y: middle + (middle * 0.4)))
                }
                .fill(Color(.black))
                
                Path { path in
                    path.move(to: CGPoint(x: 0, y: middle + (middle * 0.48)))
                    path.addLine(to: CGPoint(x: size, y: middle + (middle * 0.48)))
                    path.addLine(to: CGPoint(x: size, y: middle + (middle * 0.59)))
                    path.addLine(to: CGPoint(x: 0, y: middle + (middle * 0.59)))
                }
                .fill(Color(.black))
                
                Path { path in
                    path.move(to: CGPoint(x: 0, y: middle + (middle * 0.64)))
                    path.addLine(to: CGPoint(x: size, y: middle + (middle * 0.64)))
                    path.addLine(to: CGPoint(x: size, y: middle + (middle * 0.77)))
                    path.addLine(to: CGPoint(x: 0, y: middle + (middle * 0.77)))
                }
                .fill(Color(.black))
                
                Path { path in
                    path.move(to: CGPoint(x: 0, y: middle + (middle * 0.96)))
                    path.addLine(to: CGPoint(x: size, y: middle + (middle * 0.96)))
                    path.addLine(to: CGPoint(x: size, y: middle + (middle * 0.82)))
                    path.addLine(to: CGPoint(x: 0, y: middle + (middle * 0.82)))
                }
                .fill(Color(.black))
            }
            .clipShape(Circle())
            .frame(width: width, height: height)
        }
    }
}


struct ZebraView_Previews: PreviewProvider {
    static var previews: some View {
        ZebraView(width: 200, height: 200)
    }
}






