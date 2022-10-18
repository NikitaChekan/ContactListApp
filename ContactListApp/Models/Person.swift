//
//  Person.swift
//  ContactListApp
//
//  Created by Nikita Chekan on 18.10.2022.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Person] {
        []
    }
}
