//
//  Coordinator.swift
//  Budget Manager
//
//  Created by Daniil Balakiriev on 30.04.2022.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    func start()
}
