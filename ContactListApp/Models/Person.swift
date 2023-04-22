//
//  Person.swift
//  ContactListApp
//
//  Created by Zaki on 22.04.2023.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }


    static func gerContacts() -> [Person] {
        var contacts: [Person] = []
        let dataStorage = DataStorage.shared
        
        let names = dataStorage.names.shuffled()
        let surnames = dataStorage.suranmes.shuffled()
        let emails = dataStorage.emails.shuffled()
        let phones = dataStorage.phones.shuffled()
        
        for index in 0..<names.count {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phones[index]
            )
            
            contacts.append(person)
        }
        
        return contacts
    }
    
    
}

enum Rows: String {
    case phone = "phone"
    case email = "mail"
}
