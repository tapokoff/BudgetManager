//
//  ViewController.swift
//  Budget Manager
//
//  Created by Daniil Balakiriev on 29.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var loginTextbox: UITextField!
    @IBOutlet weak var passwordTextbox: UITextField!
    @IBOutlet weak var label: UILabel!
    var viewModel = ViewModel()
    @IBAction func signinButtonPressed(_ sender: Any) {
        viewModel.signinButtonPressed(login: loginTextbox.text ?? "", password: passwordTextbox.text ?? "")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        label.text = ""
    }

    func bindViewModel() {
        viewModel.statusText.bind({ (statusText) in
            DispatchQueue.main.async {
                self.label.text = statusText
            }
        })
    }

}

