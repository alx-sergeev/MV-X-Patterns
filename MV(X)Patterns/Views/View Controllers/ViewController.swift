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
    private var viewModel: ViewModel! {
        didSet {
            self.tapLabel.text = "Hello, \(viewModel.fullName)!"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showGreetingPressed() {
        viewModel = ViewModel()
    }
}
