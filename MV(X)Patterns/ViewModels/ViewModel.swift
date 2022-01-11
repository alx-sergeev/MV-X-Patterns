//
//  ViewModel.swift
//  MV(X)Patterns
//
//  Created by Сергеев Александр on 11.01.2022.
//

import Foundation

protocol ViewModelProtocol: AnyObject {
    var greeting: String? { get set }
    var greetingDidChanged: ((ViewModelProtocol) -> ())? { get set }
    func showGreeting()
}

class ViewModel: ViewModelProtocol {
    // MARK: - Properties
    private let person = Person(name: "Tim", surname: "Cook")
    var greeting: String? {
        didSet {
            greetingDidChanged?(self)
        }
    }
    var greetingDidChanged: ((ViewModelProtocol) -> ())?
    
    // MARK: - Methods
    func showGreeting() {
        greeting = "Hello, \(person.fullName)!"
    }
}
