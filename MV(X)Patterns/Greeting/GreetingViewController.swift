//
//  ViewController.swift
//  MV(X)Patterns
//
//  Created by Сергеев Александр on 10.01.2022.
//

import UIKit

// MARK: - Protocols
protocol GreetingViewInputProtocol: AnyObject {
    func setGreeting(_ greeting: String)
}

protocol GreetingViewOutputProtocol: AnyObject {
    func didTapButtonPressed()
}

class GreetingViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet weak var tapLabel: UILabel!
    
    // MARK: - Properties
    private let configurator: GreetingConfiguratorInputProtocol = GreetingConfigurator()
    var presenter: GreetingViewOutputProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurator.configure(with: self)
    }

    @IBAction func showGreetingPressed() {
        presenter.didTapButtonPressed()
    }
}

// MARK: - GreetingViewInputProtocol
extension GreetingViewController: GreetingViewInputProtocol {
    func setGreeting(_ greeting: String) {
        tapLabel.text = greeting
    }
}
