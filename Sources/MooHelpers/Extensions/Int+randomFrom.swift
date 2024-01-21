//
//  File.swift
//  
//
//  Created by Daniel Moore on 1/20/24.
//

import Foundation


public extension Int
{
    static func randomFrom(range: Range<Int>) -> Int
    {
        range.randomElement() ?? 0
    }
}
