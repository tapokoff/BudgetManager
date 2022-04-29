//
//  Dynamic.swift
//  Budget Manager
//
//  Created by Daniil Balakiriev on 29.04.2022.
//

import Foundation

class Dynamic<T>{
    typealias Listener = (T) -> Void
    private var listener: Listener?
    
    func bind(_ listener: Listener?){
        self.listener = listener
    }
    
    var value: T {
        didSet{
            listener?(value)
        }
    }
    
    init(_ value: T) {
        self.value = value
    }
}
