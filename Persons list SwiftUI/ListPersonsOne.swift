//
//  ListPersonsOne.swift
//  Persons list SwiftUI
//
//  Created by Marat Shagiakhmetov on 15.06.2021.
//

import SwiftUI

struct ListPersonsOne: View {
    let listName: String
    let persons: [Person]
    var body: some View {
        NavigationView {
            List(persons) { list in
                NavigationLink(destination: DetailsPersonOne(persons: list)) {
                    PersonRowOne(persons: list)
                }
            }
            .navigationBarTitle(listName)
        }
    }
}

struct ListPersonsOne_Previews: PreviewProvider {
    static var previews: some View {
        ListPersonsOne(listName: "Contact List", persons: Person.getPersonList())
    }
}
