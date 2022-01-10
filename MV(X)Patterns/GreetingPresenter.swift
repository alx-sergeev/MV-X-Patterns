//
//  GreetingPresenter.swift
//  MV(X)Patterns
//
//  Created by Сергеев Александр on 10.01.2022.
//

protocol GreetingPresenterProtocol {
    init(view: GreetingViewProtocol, person: Person)
    func showGreeting()
}

class GreetingPresenter: GreetingPresenterProtocol {
    unowned let view: GreetingViewProtocol
    private let person: Person
    
    required init(view: GreetingViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = "Hello, \(person.fullName)!"
        view.setGreeting(greeting)
    }
}
