//
//  Person.swift
//  SampleApp
//
//  Created by Ali Mir on 1/13/19.
//  Copyright © 2019 Ali Mir. All rights reserved.
//

import Foundation

class Person {
    var firstName: String
    var lastName: String
    var age: Int

    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }

    func die() {
        firstName = ""
        lastName = ""
        age = 0
    }
}
