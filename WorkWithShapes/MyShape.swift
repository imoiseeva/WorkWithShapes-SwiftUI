//
//  MyShape.swift
//  WorkWithShapes
//
//  Created by Irina Moiseeva on 13.04.2021.
//

import SwiftUI

struct MyShape: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [.red, .orange, .yellow]), startPoint: UnitPoint.bottomLeading, endPoint: UnitPoint.topLeading)
                )
                .frame(width: 200, height: 200)
            ZebraView(width: 200, height: 200)
        }
    }
}

struct MyShape_Previews: PreviewProvider {
    static var previews: some View {
        MyShape(width: 200, height: 200)
    }
}
