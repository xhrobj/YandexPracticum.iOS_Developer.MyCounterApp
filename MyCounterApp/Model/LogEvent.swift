//
//  LogEvent.swift
//  MyCounterApp
//
//  Created by Mikhail Eliseev on 22.10.2023.
//

enum LogEvent {
    case increment
    case decrement
    case reset
    case negativeDecrementAttempt
    
    var title: String {
        switch self {
        case .increment:
            return "значение изменено на +1"
        case .decrement:
            return "значение изменено на -1"
        case .reset:
            return "значение сброшено"
        case .negativeDecrementAttempt:
            return "попытка уменьшить значение счётчика ниже 0"
        }
    }
}
