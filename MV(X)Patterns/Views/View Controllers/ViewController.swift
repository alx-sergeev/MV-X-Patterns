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
    private var viewModel: ViewModelProtocol! {
        didSet {
            viewModel.greetingDidChanged = { [unowned self] viewModel in
                self.tapLabel.text = viewModel.greeting
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ViewModel()
    }

    @IBAction func showGreetingPressed() {
        viewModel.showGreeting()
    }
}
