//
//  ApplicationCoordinator.swift
//  Budget Manager
//
//  Created by Daniil Balakiriev on 30.04.2022.
//

import UIKit

class ApplcationCoordinator: Coordinator {
    var navigationController: UINavigationController
    var isSignIn: Bool = false
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    func start(){
        if isSignIn { showMain(login: User.logins[0].login!) }
        else { showLogin() }
    }
    
    func showLogin(){
        let vc = LoginViewController.createObject()
        vc.coordinator = self
        vc.viewModel = LoginViewModel()
        vc.viewModel?.isSignIn = isSignIn
        navigationController.pushViewController(vc, animated: true)
    }
    
    func showMain(login: String){
        let vc = MainViewController.createObject()
        let viewModel = MainViewModel()
        viewModel.login = login
        vc.coordinator = self
        vc.viewModel = viewModel
        navigationController.viewControllers.removeAll()
        navigationController.pushViewController(vc, animated: true)
    }
    func showAbout(){}
}
