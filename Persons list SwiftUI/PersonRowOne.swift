//
//  PersonRowOne.swift
//  Persons list SwiftUI
//
//  Created by Marat Shagiakhmetov on 15.06.2021.
//

import SwiftUI

struct PersonRowOne: View {
    let persons: Person
    var body: some View {
        HStack {
            Text(persons.firstName)
                .font(.system(size: 25))
            Text(persons.lastName)
                .font(.system(size: 25))
            Spacer()
        }
    }
}

struct PersonRowOne_Previews: PreviewProvider {
    static var previews: some View {
        PersonRowOne(persons: Person.getPersonListOne())
    }
}
