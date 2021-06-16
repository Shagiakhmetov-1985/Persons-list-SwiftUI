//
//  Persons_list_SwiftUIApp.swift
//  Persons list SwiftUI
//
//  Created by Marat Shagiakhmetov on 15.06.2021.
//

import SwiftUI

@main
struct Persons_list_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(persons: Person.getPersonList())
        }
    }
}
