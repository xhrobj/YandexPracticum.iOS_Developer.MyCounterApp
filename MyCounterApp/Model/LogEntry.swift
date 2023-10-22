//
//  LogEntry.swift
//  MyCounterApp
//
//  Created by Mikhail Eliseev on 22.10.2023.
//

import Foundation

struct LogEntry {
    private static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yy HH:mm:ss"
        return formatter
    }()
    
    let event: LogEvent
    let date: Date
    
    var description: String {
        "\(LogEntry.dateFormatter.string(from: date)): \(event.title)"
    }
    
    init(event: LogEvent) {
        self.event = event
        self.date = Date()
    }
}
