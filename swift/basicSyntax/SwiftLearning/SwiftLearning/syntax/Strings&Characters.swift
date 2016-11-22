//
//  Strings&Characters.swift
//  SwiftLearning
//
//  Created by chen on 16/11/22.
//  Copyright © 2016年 none. All rights reserved.
//

import Cocoa

class Strings_Characters: NSObject {
    override init() {
        super.init()
        self.literal()
    }
    
    func literal() -> Void {
        let someString = "Some string literal value"
        print(someString)
        
        let emptyString = ""
        //let anotherEmptyString = String()
        
        if emptyString.isEmpty {
            print("Nothing to see here")
        }
        
        var variableString = "Horse"
        variableString += "and a carriage"
        
        for character in "Dog!🐶".characters {
            print(character)
        }
    }
    
}
