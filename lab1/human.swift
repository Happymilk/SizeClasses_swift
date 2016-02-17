//
//  human.swift
//  lab1
//
//  Created by Admin on 10.02.16.
//  Copyright © 2016 Admin. All rights reserved.
//

class Human {
    var name:String
    var number:String
    
    func getName() -> String {
        return self.name
    }
    
    func getNumber() -> String {
        return self.number
    }
    
    init (name:String, number:String) {
        self.name = name
        self.number = number
    }
    
}
