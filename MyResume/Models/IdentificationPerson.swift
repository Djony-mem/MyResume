//
//  File.swift
//  MyResume
//
//  Created by Brubrusha on 10/24/20.
//

struct PersonID {
    let name: String
    let password: String
}

extension ViewController {
    func getPerson() -> PersonID {
        return PersonID(name: "Aleksey", password: "A1234Y")
    }
}
