//
//  GreetingPresentor.swift
//  MV(X)Patterns
//
//  Created by Сергеев Александр on 14.01.2022.
//

// MARK: - GreetingData
struct GreetingData {
    let name: String
    let surname: String
}

class GreetingPresenter: GreetingViewOutputProtocol, GreetingInteractorOutputProtocol {
    // MARK: - Properties
    weak var view: GreetingViewInputProtocol!
    var interactor: GreetingInteractorInputProtocol!
    
    func didTapButtonPressed() {
        interactor.provideGreetingData()
    }
    
    func receiveGreetingData(greetingData: GreetingData) {
        let greeting = "Hello, \(greetingData.name) \(greetingData.surname)!"
        view.setGreeting(greeting)
    }
}
