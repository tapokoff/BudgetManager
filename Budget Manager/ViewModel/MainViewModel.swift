//
//  MainViewModel.swift
//  Budget Manager
//
//  Created by Daniil Balakiriev on 30.04.2022.
//

import Foundation


class MainViewModel {
    var login = ""
    var availableSummaryBalance: Float = 0.0
    var cashAvailableBalance: Float = 0.0
    var cardAvailableBalance: Float = 0.0
    var grocerySpend: Float = 0.0
    var gamesSpend: Float = 0.0
    var travelSpend: Float = 0.0
    
    func addCashButtonPressed(amount: Float) {
        cashAvailableBalance += amount
        availableSummaryBalance += amount
    }
    func addCardButtonPressed(amount: Float) {
        cardAvailableBalance += amount
        availableSummaryBalance += amount
    }
    func addSpendToGrocery(amount: Float, from: FromBudget) {
        switch from{
        case .FromCashBudget:
            cashAvailableBalance -= amount
        case .FromCardBudget:
            cardAvailableBalance -= amount
        }
        availableSummaryBalance -= amount
        grocerySpend += amount
    }
    func addSpendToGames(amount: Float, from: FromBudget) {
        switch from{
        case .FromCashBudget:
            cashAvailableBalance -= amount
        case .FromCardBudget:
            cardAvailableBalance -= amount
        }
        availableSummaryBalance -= amount
        gamesSpend += amount
    }
    func addSpendToTravel(amount: Float, from: FromBudget) {
        switch from{
        case .FromCashBudget:
            cashAvailableBalance -= amount
        case .FromCardBudget:
            cardAvailableBalance -= amount
        }
        availableSummaryBalance -= amount
        travelSpend += amount
    }
}
