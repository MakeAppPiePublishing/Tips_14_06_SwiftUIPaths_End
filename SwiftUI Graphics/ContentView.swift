//
//  ContentView.swift
//  SwiftUI Graphics
//
//  Created by Steven Lipton on 2/19/21.
//
// An exercise file for iOS Development Tips Weekly
// A weekly course on LinkedIn Learning for iOS developers
//  Season 14 (Q2 2021) video 06
//  by Steven Lipton (C)2021, All rights reserved
// Learn more at https://linkedin-learning.pxf.io/YxZgj
//  For more code, go to http://bit.ly/AppPieGithub

import SwiftUI
struct ContentView: View {
    var shapePoints:[DrawPoint] = [
        DrawPoint( x: 200, y: 0, type: .move),
        DrawPoint( x: 250, y: 50, type: .draw),
        DrawPoint( x: 250, y: 100, type: .draw),
        DrawPoint( x: 200, y: 150, type: .draw),
        DrawPoint(x: 150, y: 150, type: .draw),
        DrawPoint(x: 200, y: 75, type: .draw),
        DrawPoint(x: 150, y: 0, type: .draw),
        DrawPoint(x: 200, y: 0, type: .draw)
    ]
    
    var shapeCGPoints:[CGPoint]{
        var points:[CGPoint] = []
        for item in shapePoints{
            points.append(item.point)
        }
        return points
    }
    var strokeStyle:StrokeStyle{
        var s = StrokeStyle()
        s.lineWidth = 20
        s.lineJoin = .round
        s.lineCap = .round
        return s
    }
    var body: some View {
        VStack {
            Text("Hello, Spaceship!")
                .font(.title)
                .padding()
            Path{ path in
                for item in shapePoints{
                    switch item.pointType{
                    case .move:
                        path.move(to:item.point)
                    case .draw:
                        path.addLine(to:item.point)
                        
                    }
                }
            }
            .foregroundColor(.green)
            Path{ path in
                path.addLines(shapeCGPoints)
            }
            .stroke(style:strokeStyle)
            .foregroundColor(.blue)
            
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
