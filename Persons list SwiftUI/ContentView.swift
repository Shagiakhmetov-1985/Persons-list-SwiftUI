//
//  ContentView.swift
//  Persons list SwiftUI
//
//  Created by Marat Shagiakhmetov on 15.06.2021.
//

import SwiftUI

struct ContentView: View {
    let persons: [Person]
    var body: some View {
        TabView {
            ListPersonsOne(listName: "Contact List", persons: persons)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            ListPersonsTwo(listName: "Contact List", persons: persons)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(persons: Person.getPersonList())
    }
}
