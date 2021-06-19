//
//  DetailsPersonOne.swift
//  Persons list SwiftUI
//
//  Created by Marat Shagiakhmetov on 16.06.2021.
//

import SwiftUI

struct DetailsPersonOne: View {
    let person: Person
    var body: some View {
        NavigationView {
            Form {
                HStack {
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 170, height: 170)
                        .padding()
                    Spacer()
                }
                PersonRow(person: person.phone, image: SystemImages.phone.rawValue)
                PersonRow(person: person.email, image: SystemImages.email.rawValue)
            }
            .navigationBarTitle("\(person.fullName)")
        }
    }
}

struct DetailsPersonOne_Previews: PreviewProvider {
    static var previews: some View {
        DetailsPersonOne(person: Person.getPersonList().first!)
    }
}
