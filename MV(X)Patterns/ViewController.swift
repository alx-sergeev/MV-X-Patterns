//
//  ViewController.swift
//  MV(X)Patterns
//
//  Created by Сергеев Александр on 10.01.2022.
//

import UIKit

protocol GreetingViewProtocol: AnyObject {
    func setGreeting(_ greeting: String)
}

class ViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet weak var tapLabel: UILabel!
    
    // MARK: - Properties
    private var presenter: GreetingPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let person = Person(name: "Tim", surname: "Cook")
        presenter = GreetingPresenter(view: self, person: person)
    }

    @IBAction func showGreetingPressed() {
        presenter?.showGreeting()
    }
}

extension ViewController: GreetingViewProtocol {
    func setGreeting(_ greeting: String) {
        tapLabel.text = greeting
    }
}
