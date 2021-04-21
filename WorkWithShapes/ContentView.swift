//
//  ContentView.swift
//  WorkWithShapes
//
//  Created by Irina Moiseeva on 13.04.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showShape = false
    
    var body: some View {
        
        VStack {
            Button(action: { showShape.toggle() }) {
                HStack {
                    Text(showShape ? "Hide Shape": "Show Shape")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .rotationEffect(.degrees(showShape ? 0: 180))
                        .animation(.default)
                }
            }
            Spacer()
            ScrollView {
                
                GradientRectangles(width: 250, height: 250)
                    .offset(x: showShape ? 0: -UIScreen.main.bounds.width)
                    .animation(.spring(response: 0.55,
                                       dampingFraction: 0.45,
                                       blendDuration: 0))
                
                CurvesView(width: 250, height: 250)
                    .offset(x: showShape ? 0: -UIScreen.main.bounds.width)
                    .animation(.spring(response: 0.9,
                                       dampingFraction: 0.8,
                                       blendDuration: 0))
                
                PathView(width: 250, height: 250)
                    .offset(x: showShape ? 0: -UIScreen.main.bounds.width)
                    .animation(.linear)
                
                MyShape(width: 250, height: 250)
                    .offset(x: showShape ? 0: -UIScreen.main.bounds.width)
                    .animation(.default)
                
            }
            Spacer()
        }
        .font(.headline)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
