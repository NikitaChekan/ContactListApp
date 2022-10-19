//
//  Person.swift
//  ContactListApp
//
//  Created by Nikita Chekan on 18.10.2022.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Person] {
        let dataMenager = DataStore()
        
        var persons: [Person] = []
        
        for _ in dataMenager.names {
            let person = Person(
                name: dataMenager.names.randomElement() ?? "",
                surname: dataMenager.surnames.randomElement() ?? "",
                email: dataMenager.emails.randomElement() ?? "",
                phone: dataMenager.phones.randomElement() ?? ""
            )
            persons.append(person)
        }
        
        return persons
    }
}
