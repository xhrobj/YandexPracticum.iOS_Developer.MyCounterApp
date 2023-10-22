//
//  Counter.swift
//  MyCounterApp
//
//  Created by Mikhail Eliseev on 22.10.2023.
//

class Counter {
    private var  logger = Logger()
    private (set) var count = 0
    
    var history: String {
        logger.fetchHistoryFormatted()
    }
    
    func increment() {
        guard count < Int.max else { return }
        
        count += 1
        logger.add(event: .increment)
    }
    
    func decrement() {
        guard count > 0 else {
            logger.add(event: .negativeDecrementAttempt)
            return
        }
        
        count -= 1
        logger.add(event: .decrement)
    }
    
    func reset() {
        guard count != 0 else { return }
        
        count = 0
        logger.add(event: .reset)
    }
}
