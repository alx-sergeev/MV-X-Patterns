//
//  ViewModel.swift
//  MV(X)Patterns
//
//  Created by Сергеев Александр on 11.01.2022.
//

import Foundation

class ViewModel {
    // MARK: - Properties
    private let person = Person(name: "Tim", surname: "Cook")
    
    var name: String {
        person.name
    }
    
    var surname: String {
        person.surname
    }
    
    var fullName: String {
        person.fullName
    }
}
