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
    private var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        person = Person(name: "Tim", surname: "Cook")
    }

    @IBAction func showGreetingPressed() {
        tapLabel.text = "Hello, \(person.fullName)!"
    }
}
