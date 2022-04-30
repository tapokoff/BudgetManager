//
//  AboutViewModel.swift
//  Budget Manager
//
//  Created by Daniil Balakiriev on 30.04.2022.
//

import Foundation

class AboutViewModel {
    var login = ""
    
    func getUserData() -> UserData? {
        for userData in UserData.usersData {
            if login == userData.login {
                return userData
            }
        }
        return nil
    }
}
