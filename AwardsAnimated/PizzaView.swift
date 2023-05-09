//
//  PizzaView.swift
//  AnimationsProject
//
//  Created by Аня Беликова on 09.05.2023.
//

import SwiftUI

struct PizzaView: View {
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                let width = geometry.size.width
                let height = geometry.size.height
                let size = min(width,height)
                let middle = size / 2
                let nearLine = size * 0.15
                let fearLine = size * 0.1
                
                
                
                Path { path in
                    path.move(to: CGPoint(x: middle, y: middle))
                    path.addArc(center: CGPoint(x: middle, y: middle ),
                                radius: middle - fearLine ,
                                startAngle: .degrees(0),
                                endAngle: .degrees(70),
                                clockwise: true)
                }
                .fill(.orange)
                .rotationEffect(Angle(degrees: 45))
                
                Path { path in
                    path.move(to: CGPoint(x: middle, y: middle))
                    path.addArc(center: CGPoint(x: middle, y: middle ),
                                radius: middle - nearLine ,
                                startAngle: .degrees(0),
                                endAngle: .degrees(70),
                                clockwise: true)
                }
                .fill(.yellow)
                .rotationEffect(Angle(degrees: 45))
                
                Path { path in
                    path.move(to: CGPoint(x: nearLine, y: middle))
                    path.addLine(to: CGPoint(x: middle + middle - fearLine, y: middle))
                }
                .stroke(
                    Color.orange,
                    style: StrokeStyle(lineWidth: 7))
                
                Path { path in
                    path.move(to: CGPoint(x: middle, y: middle))
                    path.addLine(to: CGPoint(x: middle + nearLine, y: nearLine))
                }
                .stroke(
                    Color.orange,
                    style: StrokeStyle(lineWidth: 7))
                
                Path { path in
                    path.move(to: CGPoint(x: middle, y: middle))
                    path.addLine(to: CGPoint(x: middle - nearLine, y: nearLine))
                }
                .stroke(
                    Color.orange,
                    style: StrokeStyle(lineWidth: 7))
                
            }
            PepperoniView()
                .offset(x:  40, y:  20)
            
            PepperoniView()
                .offset(x: -55, y: -15)
            
            PepperoniView()
                .offset(x: -40, y: -40)
            
            PepperoniView()
                .offset(x: 0, y: -52)
            
            PepperoniView()
                .offset(x: 25, y: -17)
            
            PepperoniView()
                .offset(x: 51, y: -30)
            
            PepperoniView()
                .offset(x: -50, y: 30)
        }
    }
}


struct PizzaView_Previews: PreviewProvider {
    static var previews: some View {
        PizzaView()
            .frame(width: 200, height: 200)
    }
}

struct PepperoniView: View {
    var body: some View {
        let width = 200
        
        Circle()
            .frame(width: CGFloat(width) / 10 )
            .foregroundColor(.red)
    }
}
