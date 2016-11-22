//
//  LexicalStructure.swift
//  SwiftLearning
//
//  Created by 艾呦呦 on 16/11/21.
//  Copyright © 2016年 none. All rights reserved.
//  词法结构

import Cocoa

class LexicalStructure: NSObject {
    override init() {
        super.init()
        self.theBasics()
    }
    
    func theBasics() -> Void {
        typealias string = String
        let name:string = "No Name"
        print("my name is \(name)")
        
        let urlString: String? = "zhangxv"
        print(urlString!)
        
        let http404Error = (404, "NOT Found")
        print(http404Error)
        
        let http200Status = (statusCode: 200, description: "OK")
        print("the staus code is \(http200Status.statusCode)")
        print("the status message is \(http200Status.description)")
        
        let possibleNumber = "123"
        let convertedNumber = Int(possibleNumber)
        print(convertedNumber ?? "possibleNumber is not a number string")
        
        var serverResponseCode : Int? = 404
        serverResponseCode = nil
        if let code = serverResponseCode {
            print("serverResponseCode \(code)")
        }
        
        if convertedNumber != nil {
            print("convertedNumber contains an Integer Value of \(convertedNumber!)")
        }
        
        if let firstNumber = Int("44"), let secondNumber = Int("22l"), firstNumber > secondNumber && secondNumber < 100{
            print("\(firstNumber), \(secondNumber)")
        } else {
            print("secondNumber is wrong")
        }
        
        let age = 3
        assert(age>=0, "A person's age can't be less than zero")
        
    }
}
