//
//  ListPersonsTwo.swift
//  Persons list SwiftUI
//
//  Created by Marat Shagiakhmetov on 15.06.2021.
//

import SwiftUI

struct ListPersonsTwo: View {
    let listName: String
    let persons: [Person]
    var body: some View {
        NavigationView {
            List {
                ForEach(persons) { gr in
                    Section(header: Text("\(gr.firstName) \(gr.lastName)")) {
                        HStack {
                            Image(systemName: "phone")
                                .foregroundColor(.blue)
                            Text(gr.phone)
                        }
                        HStack {
                            Image(systemName: "tray")
                                .foregroundColor(.blue)
                            Text(gr.email)
                        }
                    }
                    .textCase(nil)
                }
            }
            .navigationBarTitle(listName)
        }
    }
}

struct ListPersonsTwo_Previews: PreviewProvider {
    static var previews: some View {
        ListPersonsTwo(listName: "Contact List", persons: Person.getPersonList())
    }
}
