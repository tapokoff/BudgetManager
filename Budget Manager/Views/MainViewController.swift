//
//  MainViewController.swift
//  Budget Manager
//
//  Created by Daniil Balakiriev on 30.04.2022.
//

import UIKit


class MainViewController: UIViewController, Storyboardable {
    
    @IBOutlet var balanceLabel: UILabel!
    @IBOutlet var cashLabel: UILabel!
    @IBOutlet var cardLabel: UILabel!
    @IBOutlet var groceryLabel: UILabel!
    @IBOutlet var gamesLabel: UILabel!
    @IBOutlet var travelLabel: UILabel!
    @IBAction func aboutButtonPressed(_ sender: Any){
        coordinator?.showAbout()
    }
    @IBAction func addCashButtonPressed(_ sender: Any){
        
    }
    @IBAction func addCardButtonPressed(_ sender: Any){
        
    }
    @IBAction func addGroceryButtonPressed(_ sender: Any){
        
    }
    @IBAction func addGamesButtonPressed(_ sender: Any){
        
    }
    @IBAction func addTravelButtonPressed(_ sender: Any){
        
    }
    
    weak var coordinator: ApplcationCoordinator?
    var viewModel: MainViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        balanceLabel.text = String(format: "%.2f", viewModel!.availableSummaryBalance)
        cashLabel.text = String(format: "%.2f", viewModel!.cashAvailableBalance)
        cardLabel.text = String(format: "%.2f", viewModel!.cardAvailableBalance)
        groceryLabel.text = String(format: "%.2f", viewModel!.grocerySpend)
        gamesLabel.text = String(format: "%.2f", viewModel!.gamesSpend)
        travelLabel.text = String(format: "%.2f", viewModel!.travelSpend)
    }
    
}
