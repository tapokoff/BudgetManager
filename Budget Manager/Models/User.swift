//
//  User.swift
//  Budget Manager
//
//  Created by Daniil Balakiriev on 29.04.2022.
//

import Foundation

struct User {
    let login: String?
    let password: String?
}

extension User {
    static var logins = [
        User(login: "daniil", password: "123456"),
        User(login: "maxim", password: "654321")
    ]
}
