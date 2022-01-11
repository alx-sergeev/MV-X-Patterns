//
//  Person.swift
//  MV(X)Patterns
//
//  Created by Сергеев Александр on 10.01.2022.
//

struct Person {
    let name: String
    let surname: String
    var fullName: String {
        return "\(name) \(surname)"
    }
}
