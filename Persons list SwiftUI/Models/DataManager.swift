//
//  DataManager.swift
//  Persons list SwiftUI
//
//  Created by Marat Shagiakhmetov on 15.06.2021.
//

import SwiftUI

class DataManager {
    static let shared = DataManager()
    
    let firstName = ["Bruce", "John", "Steven", "Aaron", "Tim", "Allan",
                     "Sharon", "Ted","Carl", "Nicola"
    ]
    let lastName = ["Butler", "Smith", "Black", "Robertson", "Murphy",
                    "Williams", "Isaacson", "Jankin", "Peniworth", "Dow"
    ]
    let email = ["butler@gmail.com", "smith@gmail.com", "black@gmail.com",
                 "robertson@gmail.com", "murphy@gmail.com", "willians@gmail.com",
                 "isaacson@gmail.com", "jankin@gmail.com", "peniworth@gmail.com",
                 "dow@gmail.com"
    ]
    let phone = ["437651245", "438731094", "779401841", "116396120", "557014592",
                 "458304911", "894914954", "668360120", "435609912", "773450912"
    ]
    init() {}
}
