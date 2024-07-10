//
//  DateHelper.swift
//  Weatherly
//
//  Created by Daniel Crompton on 09/07/2024.
//

import Foundation


struct DateHelper {
    
    static func datesWithUniqueDays(for dates: [Date]) -> [Date] {
        // 1. Sort the array of dates
        let sortedDates = dates.sorted()
        print("Sorted dates = \(sortedDates)")
        
        // 2. Store variable to hold the last unique day
        var lastUniqueDate = Date.distantPast
        // 3. Store a second list of the unique dayes
        var uniqueDates = [Date]()
        
        // 4. Iterate over each date
            // - If date is in the last unique date, don't add it
            // - Otherwise, it is a new date, and add it and set the `lastUniqueDate` to that date
        
        for dateIndex in sortedDates.indices {
            let date = sortedDates[dateIndex]
            
            print("isDate(\(date), inSameDayAs: \(lastUniqueDate) = \(Calendar.current.isDate(date, inSameDayAs: lastUniqueDate))")
            
            if !(Calendar.current.isDate(date, inSameDayAs: lastUniqueDate)) {
                uniqueDates.append(date)
                lastUniqueDate = date
            }
        }
        
        return uniqueDates
    }


    static func dayNameFor(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE"
        return formatter.string(from: date)
    }
    
    
    static func readableDate(for date: Date) -> String {
        date.formatted(date: .abbreviated, time: .omitted)
    }
    static func readableTime(for date: Date) -> String {
        date.formatted(date: .omitted, time: .shortened)
    }
    
}
