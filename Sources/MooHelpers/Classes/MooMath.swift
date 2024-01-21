//
//  File.swift
//  
//
//  Created by Daniel Moore on 1/20/24.
//

import Foundation


class MooMath
{
    static func getRandomNumber(upperLimit: CGFloat) -> CGFloat {
        return CGFloat(arc4random_uniform(UInt32(upperLimit + 1)))
    }
}
