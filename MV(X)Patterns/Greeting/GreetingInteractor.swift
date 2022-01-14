//
//  GreetingInteractor.swift
//  MV(X)Patterns
//
//  Created by Сергеев Александр on 14.01.2022.
//

// MARK: - Protocols
protocol GreetingInteractorInputProtocol: AnyObject {
    func provideGreetingData()
}

protocol GreetingInteractorOutputProtocol: AnyObject {
    func receiveGreetingData(greetingData: GreetingData)
}

class GreetingInteractor: GreetingInteractorInputProtocol {
    // MARK: - Properties
    weak var presenter: GreetingInteractorOutputProtocol!
    
    func provideGreetingData() {
        let person = Person(name: "Tim", surname: "Cook")
        let greetingData = GreetingData(name: person.name, surname: person.surname)
        
        presenter.receiveGreetingData(greetingData: greetingData)
    }
}
