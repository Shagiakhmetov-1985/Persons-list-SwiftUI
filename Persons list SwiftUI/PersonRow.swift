//
//  PersonRowOne.swift
//  Persons list SwiftUI
//
//  Created by Marat Shagiakhmetov on 15.06.2021.
//

import SwiftUI

struct PersonRow: View {
    let person: String
    let image: String
    var body: some View {
        HStack {
            Image(systemName: image)
                .font(.system(size: 22))
                .foregroundColor(.blue)
            Text(person)
                .font(.system(size: 22))
        }
    }
}

struct PersonRow_Previews: PreviewProvider {
    static var previews: some View {
        PersonRow(person: Person.getPersonList().first!.phone, image: SystemImages.phone.rawValue)
    }
}
