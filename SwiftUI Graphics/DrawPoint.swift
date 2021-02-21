//
//  DrawPoint.swift
//  SwiftUI Graphics
//
//  Created by Steven Lipton on 2/21/21.
//
// An exercise file for iOS Development Tips Weekly
// A weekly course on LinkedIn Learning for iOS developers
//  Season 14 (Q2 2021) video 06
//  by Steven Lipton (C)2021, All rights reserved
// Learn more at https://linkedin-learning.pxf.io/YxZgj
//  For more code, go to http://bit.ly/AppPieGithub

import CoreGraphics
enum PointType{
        case draw,move
    }
struct DrawPoint{
    var pointType:PointType
    var x: CGFloat
    var y: CGFloat
    var point:CGPoint{
        CGPoint(x:x,y:y)
    }
    init(x:CGFloat, y:CGFloat, type:PointType){
        self.x = x
        self.y = y
        self.pointType = type
    }
}









