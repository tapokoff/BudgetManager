//
//  AboutViewController.swift
//  Budget Manager
//
//  Created by Daniil Balakiriev on 30.04.2022.
//

import UIKit


class AboutViewController: UIViewController, Storyboardable {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var sexLabel: UILabel!
    
    weak var coordinator: ApplcationCoordinator?
    var viewModel: AboutViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let data = viewModel?.getUserData()
        nameLabel.text = data?.name
        countryLabel.text = data?.country
        emailLabel.text = data?.email
        sexLabel.text = data?.sex
    }
}
