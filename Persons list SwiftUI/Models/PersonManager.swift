//
//  PersonManager.swift
//  Persons list SwiftUI
//
//  Created by Marat Shagiakhmetov on 15.06.2021.
//

import SwiftUI

class Person: Identifiable {
    let firstName: String
    let lastName: String
    let email: String
    let phone: String
    let emailAndPhone: [String]
    
    init(firstName: String, lastName: String, email: String, phone: String, emailAndPhone: [String]) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.phone = phone
        self.emailAndPhone = emailAndPhone
    }
}

extension Person {
    static func getPersonList() -> [Person] {
        var dataManager: [Person] = []

        let firstName = DataManager.shared.firstName.shuffled()
        let lastName = DataManager.shared.lastName.shuffled()
        let email = DataManager.shared.email.shuffled()
        let phone = DataManager.shared.phone.shuffled()

        let iterationCount = min(firstName.count, lastName.count, email.count, phone.count)

        for index in 0..<iterationCount {
            let person = Person(
                firstName: firstName[index],
                lastName: lastName[index],
                email: email[index],
                phone: phone[index],
                emailAndPhone: [email[index], phone[index]]
            )
            dataManager.append(person)
        }
        return dataManager
    }
    
    static func getPersonListOne() -> Person {
        let firstName = DataManager.shared.firstName.shuffled()
        let lastName = DataManager.shared.lastName.shuffled()
        let email = DataManager.shared.email.shuffled()
        let phone = DataManager.shared.phone.shuffled()
        
        let person = Person(
            firstName: firstName.first ?? "",
            lastName: lastName.first ?? "",
            email: email.first ?? "",
            phone: phone.first ?? "",
            emailAndPhone: [email.first ?? "", phone.first ?? ""]
        )
        
        return person
    }
}
