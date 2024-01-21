//
//  File.swift
//  
//
//  Created by Daniel Moore on 1/20/24.
//

import Foundation


open class MooGeometry
{
    static func getRadiansBetweenTwoPoints(firstPoint: CGPoint, secondPoint: CGPoint) -> Double {
        return Double(atan2(secondPoint.y - firstPoint.y, secondPoint.x - firstPoint.x)) + .pi/2
    }
    
    static func getDistance(point1: CGPoint, point2: CGPoint) -> Double {
        return Double(sqrt(pow((point1.x - point2.x), 2) + pow((point1.y - point2.y), 2)))
    }
    
    static func getAngle(opposite: CGFloat, adjacent: CGFloat) -> CGFloat {
        return atan(opposite / adjacent)
    }
    
    static func getTriangleLegs(hypotenuse: CGFloat, angle: CGFloat, sign: CGFloat) -> (CGFloat, CGFloat) {
        let dy = sin(angle) * 1000 * sign
        let dx = cos(angle) * 1000 * sign
        return (dx, dy)
    }
}
