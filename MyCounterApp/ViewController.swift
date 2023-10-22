//
//  ViewController.swift
//  MyCounterApp
//
//  Created by Mikhail Eliseev on 22.10.2023.
//

import UIKit

class ViewController: UIViewController {
    private let counterLabelPrefix = "Значение счётчика: "
    private let historyTitle = "История изменений:\n\n"
    
    private let counter = Counter()

    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var historyTextView: UITextView!
    
    // MARK: - IBActions
    
    @IBAction func decrementButtoTapped() {
        counter.decrement()
        updateView()
    }
    
    @IBAction func incrementButtonTapped() {
        counter.increment()
        updateView()
        
    }
    
    @IBAction func resetButtonTapped() {
        counter.reset()
        updateView()
    }
    
    // MARK: - View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateView()
    }
}

private extension ViewController {
    private func updateView() {
        counterLabel.text = counterLabelPrefix + String(counter.count)
        historyTextView.text = historyTitle + counter.history
        scrollHistoryToLastLineAnimated()
    }
    
    private func scrollHistoryToLastLineAnimated() {
        guard let caretPositionRange = historyTextView.selectedTextRange else { return }

        historyTextView.scrollRectToVisible(
            historyTextView.caretRect(for: caretPositionRange.start),
            animated: true
        )
    }
}
