//
//  DetailsPersonOne.swift
//  Persons list SwiftUI
//
//  Created by Marat Shagiakhmetov on 16.06.2021.
//

import SwiftUI

struct DetailsPersonOne: View {
    let persons: Person
    var body: some View {
        NavigationView {
            List {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 170, height: 170)
                    .padding(.leading, 75)
                    .padding()
                HStack {
                    Image(systemName: "phone")
                        .font(.system(size: 25))
                        .foregroundColor(.blue)
                    Text(persons.phone)
                        .font(.system(size: 25))
                }
                HStack {
                    Image(systemName: "tray")
                        .font(.system(size: 25))
                        .foregroundColor(.blue)
                    Text(persons.email)
                        .font(.system(size: 25))
                }
            }
            .navigationBarTitle("\(persons.firstName) \(persons.lastName)")
        }
    }
}

struct DetailsPersonOne_Previews: PreviewProvider {
    static var previews: some View {
        DetailsPersonOne(persons: Person.getPersonListOne())
    }
}
