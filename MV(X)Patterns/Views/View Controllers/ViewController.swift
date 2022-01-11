//
//  ViewController.swift
//  MV(X)Patterns
//
//  Created by Сергеев Александр on 10.01.2022.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet weak var tapLabel: UILabel!
    
    // MARK: - Properties
    private let viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showGreetingPressed() {
    }
}
