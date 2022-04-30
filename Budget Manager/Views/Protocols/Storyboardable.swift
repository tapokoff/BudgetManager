//
//  Storyboardable.swift
//  Budget Manager
//
//  Created by Daniil Balakiriev on 30.04.2022.
//

import UIKit

protocol Storyboardable {
    static func createObject() -> Self
}

extension Storyboardable where Self: UIViewController{
    static func createObject() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(identifier: id) as! Self
    }
}
