//
//  Logger.swift
//  MyCounterApp
//
//  Created by Mikhail Eliseev on 22.10.2023.
//

class Logger {
    private var storage: [LogEntry] = []
    
    func add(event: LogEvent) {
        storage.append(LogEntry(event: event))
    }
    
    func fetchHistoryFormatted() -> String {
        storage.reduce("", {
            "\($0)\($1.description)\n"
        })
    }
}
