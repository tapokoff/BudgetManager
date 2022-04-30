//
//  UserData.swift
//  Budget Manager
//
//  Created by Daniil Balakiriev on 30.04.2022.
//

import Foundation


struct UserData {
    var login: String?
    var name: String?
    var country: String?
    var email: String?
    var sex: String?
}

extension UserData {
    static var usersData = [
        UserData(login: "daniil", name: "Daniil Balakiriev", country: "Ukraine", email: "daniil.example@ex.org", sex: "Male"),
        UserData(login: "maxim", name: "Maxim Pronin", country: "Ukraine", email: "maxim.example@ex.org", sex: "Male")
    ]
}
