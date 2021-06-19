//
//  ListPersonsOne.swift
//  Persons list SwiftUI
//
//  Created by Marat Shagiakhmetov on 15.06.2021.
//

import SwiftUI

struct ListPersonsOne: View {
    let persons: [Person]
    var body: some View {
        NavigationView {
            List(persons) { person in
                NavigationLink(destination: DetailsPersonOne(person: person)) {
                    Text("\(person.fullName)")
                        .font(.system(size: 25))
                }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct ListPersonsOne_Previews: PreviewProvider {
    static var previews: some View {
        ListPersonsOne(persons: Person.getPersonList())
    }
}
