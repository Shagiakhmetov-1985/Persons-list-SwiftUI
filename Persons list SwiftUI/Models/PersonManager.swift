//
//  PersonManager.swift
//  Persons list SwiftUI
//
//  Created by Marat Shagiakhmetov on 15.06.2021.
//

import Foundation

struct Person: Identifiable {
    let id: Int
    let firstName: String
    let lastName: String
    let email: String
    let phone: String
    let emailAndPhone: [String]
    
    var fullName: String {
        "\(firstName) \(lastName)"
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
                id: index + 1,
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
}

enum SystemImages: String {
    case phone = "phone"
    case email = "tray"
    case avatar = "person.fill"
    case contacts = "person.3"
}
