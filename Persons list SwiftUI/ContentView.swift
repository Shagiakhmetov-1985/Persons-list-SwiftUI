//
//  ContentView.swift
//  Persons list SwiftUI
//
//  Created by Marat Shagiakhmetov on 15.06.2021.
//

import SwiftUI

struct ContentView: View {
    private let persons = Person.getPersonList()
    var body: some View {
        TabView {
            ListPersonsOne(persons: persons)
                .tabItem {
                    Image(systemName: SystemImages.contacts.rawValue)
                    Text("Contacts")
                }
            ListPersonsTwo(persons: persons)
                .tabItem {
                    Image(systemName: SystemImages.phone.rawValue)
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
