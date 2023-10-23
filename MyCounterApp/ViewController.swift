//
//  ViewController.swift
//  MyCounterApp
//
//  Created by Mikhail Eliseev on 22.10.2023.
//

import UIKit

final class ViewController: UIViewController {
    private let counterLabelPrefix = "Значение счётчика: "
    private let historyTitle = "История изменений:\n\n"
    private let counter = Counter()
    
    // MARK: - IBOutlets

    @IBOutlet private weak var counterLabel: UILabel!
    @IBOutlet private weak var historyTextView: UITextView!
    
    // MARK: - IBActions
    
    @IBAction private func decrementButtoTapped() {
        counter.decrement()
        updateView()
    }
    
    @IBAction private func incrementButtonTapped() {
        counter.increment()
        updateView()
        
    }
    
    @IBAction private func resetButtonTapped() {
        counter.reset()
        updateView()
    }
    
    // MARK: - View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
}

private extension ViewController {
    func updateView() {
        counterLabel.text = counterLabelPrefix + String(counter.count)
        historyTextView.text = historyTitle + counter.history
        scrollHistoryToLastLineAnimated()
    }
    
    func scrollHistoryToLastLineAnimated() {
        guard let caretPositionRange = historyTextView.selectedTextRange else { return }

        historyTextView.scrollRectToVisible(
            historyTextView.caretRect(for: caretPositionRange.start),
            animated: true
        )
    }
}
