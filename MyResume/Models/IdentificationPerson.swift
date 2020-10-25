//
//  File.swift
//  MyResume
//
//  Created by Brubrusha on 10/24/20.
//

struct PersonID {
    var name: String
    var password: String
}

func getPersonID() -> PersonID {
    return PersonID(name: "Aleksey", password: "A1234Y")
}
