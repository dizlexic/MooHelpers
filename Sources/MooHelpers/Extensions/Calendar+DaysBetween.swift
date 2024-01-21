//
//  File.swift
//  
//
//  Created by Daniel Moore on 1/20/24.
//

import Foundation


// Ref: https://sarunw.com/posts/getting-number-of-days-between-two-dates/
public extension Calendar {
    func numberOfDaysBetween(_ from: Date, and to: Date) -> Int {
        let fromDate = startOfDay(for: from) // <1>
        let toDate = startOfDay(for: to) // <2>
        let numberOfDays = dateComponents([.day], from: fromDate, to: toDate) // <3>
        
        return numberOfDays.day!
    }
    
    func numberOfDaysBetween(_ from: Date, and to: Date, includeStart: Bool) -> Int {
        let fromDate = startOfDay(for: from)
        let toDate = startOfDay(for: to)
        let numberOfDays = dateComponents([.day], from: fromDate, to: toDate)
        
        return numberOfDays.day! + 1 // <1>
    }
    
    // Same as above + time
    func numberOf24DaysBetween(_ from: Date, and to: Date) -> Int {
        let numberOfDays = dateComponents([.day], from: from, to: to)
        
        return numberOfDays.day!
    }
    
    func numberOf24DaysBetween(_ from: Date, and to: Date, includeStart: Bool) -> Int {
        let numberOfDays = dateComponents([.day], from: from, to: to)
        
        return numberOfDays.day! + 1
    }
}
