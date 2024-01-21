//
//  File.swift
//  
//
//  Created by Daniel Moore on 1/20/24.
//

import Foundation


public extension Array {
    func chunked(into size: Int) -> [[Element]] {
        let count = self.count
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}
