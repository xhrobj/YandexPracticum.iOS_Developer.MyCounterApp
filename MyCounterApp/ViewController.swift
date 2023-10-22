//
//  ViewController.swift
//  MyCounterApp
//
//  Created by Mikhail Eliseev on 22.10.2023.
//

import UIKit

class ViewController: UIViewController {
    private let counterLabelPrefix = "Значение счётчика: "
    
    private var counter = 0

    @IBOutlet weak var counterLabel: UILabel!
    
    @IBAction func incrementCounterButtonTapped() {
        counter += 1
        refreshCounterLabel()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        refreshCounterLabel()
    }
    
    private func refreshCounterLabel() {
        counterLabel.text = counterLabelPrefix + String(counter)
    }
}
