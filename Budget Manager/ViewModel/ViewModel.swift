//
//  ViewModel.swift
//  Budget Manager
//
//  Created by Daniil Balakiriev on 29.04.2022.
//

import Foundation

class ViewModel{
    var statusText = Dynamic("")
    
    func signinButtonPressed(login: String, password: String){
        var logged = false
        for userData in User.logins{
            if userData.login == login && userData.password == password{
                logged = true
                break
            }
        }
        if logged {
            statusText.value = "Sign-in successfully"
        }
        else {
            statusText.value = "Sign-in failed"
        }
    }
}
