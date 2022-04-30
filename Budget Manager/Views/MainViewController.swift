//
//  MainViewController.swift
//  Budget Manager
//
//  Created by Daniil Balakiriev on 30.04.2022.
//

import UIKit


class MainViewController: UIViewController, Storyboardable {
    
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var balanceLabel: UILabel!
    @IBOutlet var cashLabel: UILabel!
    @IBOutlet var cardLabel: UILabel!
    @IBOutlet var groceryLabel: UILabel!
    @IBOutlet var gamesLabel: UILabel!
    @IBOutlet var travelLabel: UILabel!
    @IBAction func aboutButtonPressed(_ sender: Any){
        coordinator?.showAbout(login: self.viewModel!.login)
    }
    @IBAction func addCashButtonPressed(_ sender: Any){
        let alert = UIAlertController(title: "Add some cash", message: "Please, input amount in format 123.45.", preferredStyle: UIAlertController.Style.alert )

        let add = UIAlertAction(title: "Add", style: .default) { (alertAction) in
            let textField = alert.textFields![0] as UITextField
            
            if let textFloat = Float(textField.text!) {
                self.viewModel!.addCashButtonPressed(amount: textFloat)
                self.updateLabelState()
            }
            else{
                self.incorrectInput()
            }
        }
    
        alert.addTextField { (textField) in textField.placeholder = "Enter amount of cash" }

        alert.addAction(add)

        let cancel = UIAlertAction(title: "Cancel", style: .default) { (alertAction) in }
        alert.addAction(cancel)
        self.present(alert, animated:true, completion: nil)

    }
    @IBAction func addCardButtonPressed(_ sender: Any){
        let alert = UIAlertController(title: "Add some money on card", message: "Please, input amount in format 123.45.", preferredStyle: UIAlertController.Style.alert )

        let add = UIAlertAction(title: "Add", style: .default) { (alertAction) in
            let textField = alert.textFields![0] as UITextField
            
            if let textFloat = Float(textField.text!) {
                self.viewModel!.addCardButtonPressed(amount: textFloat)
                self.updateLabelState()
            }
            else{
                self.incorrectInput()
            }
        }
    
        alert.addTextField { (textField) in textField.placeholder = "Enter amount of cash" }

        alert.addAction(add)

        let cancel = UIAlertAction(title: "Cancel", style: .default) { (alertAction) in }
        alert.addAction(cancel)
        self.present(alert, animated:true, completion: nil)
    }
    @IBAction func addGroceryButtonPressed(_ sender: Any){
        let alert = UIAlertController(title: "Spend your money on grocery", message: "Please, input amount in format 123.45.", preferredStyle: UIAlertController.Style.alert )

        let addCash = UIAlertAction(title: "Spend cash", style: .default) { (alertAction) in
            let textField = alert.textFields![0] as UITextField
            
            if let textFloat = Float(textField.text!) {
                if textFloat > self.viewModel!.cashAvailableBalance {
                    self.cantAfford(message: "in cash", value: textFloat)
                }
                else{
                    self.viewModel!.addSpendToGrocery(amount: textFloat, from: FromBudget.FromCashBudget)
                    self.updateLabelState()
                }
            }
            else{
                self.incorrectInput()
            }
        }
        let addCard = UIAlertAction(title: "Spend card", style: .default) { (alertAction) in
            let textField = alert.textFields![0] as UITextField
            
            if let textFloat = Float(textField.text!) {
                if textFloat > self.viewModel!.cardAvailableBalance {
                    self.cantAfford(message: "on card", value: textFloat)
                }
                else{
                    self.viewModel!.addSpendToGrocery(amount: textFloat, from: FromBudget.FromCardBudget)
                    self.updateLabelState()
                }
            }
            else{
                self.incorrectInput()
            }
        }
    
        alert.addTextField { (textField) in textField.placeholder = "Enter amount of cash" }

        alert.addAction(addCash)
        alert.addAction(addCard)

        let cancel = UIAlertAction(title: "Cancel", style: .default) { (alertAction) in }
        alert.addAction(cancel)
        self.present(alert, animated:true, completion: nil)
    }
    @IBAction func addGamesButtonPressed(_ sender: Any){
        let alert = UIAlertController(title: "Spend your money on games", message: "Please, input amount in format 123.45.", preferredStyle: UIAlertController.Style.alert )

        let addCash = UIAlertAction(title: "Spend cash", style: .default) { (alertAction) in
            let textField = alert.textFields![0] as UITextField
            
            if let textFloat = Float(textField.text!) {
                if textFloat > self.viewModel!.cashAvailableBalance {
                    self.cantAfford(message: "in cash", value: textFloat)
                }
                else{
                    self.viewModel!.addSpendToGames(amount: textFloat, from: FromBudget.FromCashBudget)
                    self.updateLabelState()
                }
            }
            else{
                self.incorrectInput()
            }
        }
        let addCard = UIAlertAction(title: "Spend card", style: .default) { (alertAction) in
            let textField = alert.textFields![0] as UITextField
            
            if let textFloat = Float(textField.text!) {
                if textFloat > self.viewModel!.cardAvailableBalance {
                    self.cantAfford(message: "on card", value: textFloat)
                }
                else{
                    self.viewModel!.addSpendToGames(amount: textFloat, from: FromBudget.FromCardBudget)
                    self.updateLabelState()
                }
            }
            else{
                self.incorrectInput()
            }
        }
    
        alert.addTextField { (textField) in textField.placeholder = "Enter amount of cash" }

        alert.addAction(addCash)
        alert.addAction(addCard)

        let cancel = UIAlertAction(title: "Cancel", style: .default) { (alertAction) in }
        alert.addAction(cancel)
        self.present(alert, animated:true, completion: nil)
    }
    @IBAction func addTravelButtonPressed(_ sender: Any){
        let alert = UIAlertController(title: "Spend your money on travel", message: "Please, input amount in format 123.45.", preferredStyle: UIAlertController.Style.alert )

        let addCash = UIAlertAction(title: "Spend cash", style: .default) { (alertAction) in
            let textField = alert.textFields![0] as UITextField
            
            if let textFloat = Float(textField.text!) {
                if textFloat > self.viewModel!.cashAvailableBalance {
                    self.cantAfford(message: "in cash", value: textFloat)
                }
                else{
                    self.viewModel!.addSpendToTravel(amount: textFloat, from: FromBudget.FromCashBudget)
                    self.updateLabelState()
                }
            }
            else{
                self.incorrectInput()
            }
        }
        let addCard = UIAlertAction(title: "Spend card", style: .default) { (alertAction) in
            let textField = alert.textFields![0] as UITextField
            
            if let textFloat = Float(textField.text!) {
                if textFloat > self.viewModel!.cardAvailableBalance {
                    self.cantAfford(message: "on card", value: textFloat)
                }
                else{
                    self.viewModel!.addSpendToTravel(amount: textFloat, from: FromBudget.FromCardBudget)
                    self.updateLabelState()
                }
            }
            else{
                self.incorrectInput()
            }
        }
    
        alert.addTextField { (textField) in textField.placeholder = "Enter amount of cash" }

        alert.addAction(addCash)
        alert.addAction(addCard)

        let cancel = UIAlertAction(title: "Cancel", style: .default) { (alertAction) in }
        alert.addAction(cancel)
        self.present(alert, animated:true, completion: nil)
    }
    
    weak var coordinator: ApplcationCoordinator?
    var viewModel: MainViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabelState()
        welcomeLabel.text = "Welcome, \(viewModel!.login)"
    }
    
    func updateLabelState() {
        balanceLabel.text = String(format: "%.2f", viewModel!.availableSummaryBalance)
        cashLabel.text = String(format: "%.2f", viewModel!.cashAvailableBalance)
        cardLabel.text = String(format: "%.2f", viewModel!.cardAvailableBalance)
        groceryLabel.text = String(format: "%.2f", viewModel!.grocerySpend)
        gamesLabel.text = String(format: "%.2f", viewModel!.gamesSpend)
        travelLabel.text = String(format: "%.2f", viewModel!.travelSpend)
    }
    
    func incorrectInput() {
        let incorrect = UIAlertController(title: "Incorrect format!", message: "Amount was entered in incorrect format.", preferredStyle: UIAlertController.Style.alert)
        let ok = UIAlertAction(title: "Ok", style: .default) { (alertAction) in }
        incorrect.addAction(ok)
        self.present(incorrect, animated: true, completion: nil)
    }
    
    func cantAfford(message: String, value: Float) {
        let cantAfford = UIAlertController(title: "You can't afford it!", message: "You don't have \(String(format: "%.2f", value)) \(message)!", preferredStyle: UIAlertController.Style.alert)
        let ok = UIAlertAction(title: "Ok", style: .default) { (alertAction) in }
        cantAfford.addAction(ok)
        self.present(cantAfford, animated: true, completion: nil)
    }
    
}
