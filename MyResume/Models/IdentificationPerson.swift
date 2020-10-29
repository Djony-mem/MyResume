//
//  File.swift
//  MyResume
//
//  Created by Brubrusha on 10/24/20.
//

struct User {
    let login: String
    let password: String
    let person: PersonID
    
    
    static func getPersonID() -> User {
        User(login: "Aleksey",
             password: "12345",
             person: PersonID(name: "Aleksey", surName: "Efimov"))
    }
    
}

struct PersonID {
    let name: String
    let surName: String
    
    var fullName: String {
        "\(name) \(surName)"
    }
}
