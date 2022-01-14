//
//  GreetingConfigurator.swift
//  MV(X)Patterns
//
//  Created by Сергеев Александр on 14.01.2022.
//

// MARK: - Protocols
protocol GreetingConfiguratorInputProtocol: AnyObject {
    func configure(with view: GreetingViewController)
}

class GreetingConfigurator: GreetingConfiguratorInputProtocol {
    func configure(with view: GreetingViewController) {
        let presenter = GreetingPresenter()
        let interactor = GreetingInteractor()
        
        view.presenter = presenter
        interactor.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
    }
}
