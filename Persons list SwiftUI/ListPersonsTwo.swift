//
//  ListPersonsTwo.swift
//  Persons list SwiftUI
//
//  Created by Marat Shagiakhmetov on 15.06.2021.
//

import SwiftUI

struct ListPersonsTwo: View {
    let persons: [Person]
    var body: some View {
        NavigationView {
            List {
                ForEach(persons) { gr in
                    Section(header: Text("\(gr.fullName)")) {
                        PersonRow(person: gr.phone, image: SystemImages.phone.rawValue)
                        PersonRow(person: gr.email, image: SystemImages.email.rawValue)
                    }
                    .textCase(.none)
                }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct ListPersonsTwo_Previews: PreviewProvider {
    static var previews: some View {
        ListPersonsTwo(persons: Person.getPersonList())
    }
}
