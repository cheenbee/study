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
        
        let string1 = "hello"
        let string2 = "there"
        var welcome = string1 + string2
        
        var instruction = "look over"
        instruction += string2
        
        let exclamationMark: Character = "!"
        welcome.append(exclamationMark)
        print("instruction: \(instruction), welcome: \(welcome)")
        
        let multiplier = 3
        let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
        print(message)
        
        let catCharacters: [Character] = ["C", "a", "t", "🐱"]
        let catString = String(catCharacters)
        print(catString)
        
        //unicode scalars
        let sparkingHeart = "\u{1F496}\\ \u{1F425}"
        print(sparkingHeart)
        print("\(instruction.characters)")
        
        // strings count length
        var word = "cafe"
        print("the number of characters in \(word) count is \(word.characters.count)")
        
        word += "\u{301}"
        print("the number of characters in \(word) is \(word.characters.count)")
        
        //strings index
        let greeting = "Guten Yag!"
        print("greeting[greeting.index(before: greeting.endIndex)] :\(greeting[greeting.index(before: greeting.endIndex)])")
        print(greeting[greeting.index(greeting.startIndex, offsetBy: 4)])
        let index = greeting.index(greeting.startIndex, offsetBy: 7)
        print("index: \(index), \(greeting[index])")
        
        //insert a character
        var welcomeStr = "hello"
        welcomeStr.insert("!", at: welcomeStr.endIndex)
        print("welcomeStr : \(welcomeStr)")
        
        //insert character collection
        welcomeStr.insert(contentsOf: "world".characters, at: welcomeStr.index(before: welcomeStr.endIndex))
        print("welcomeStr : \(welcomeStr)")
        
        //remove a charactor at index
        let removeIndex = welcomeStr.index(before: welcomeStr.endIndex);
        welcomeStr.remove(at: removeIndex)
        print("welcomeStr remove at index \(removeIndex) then is : \(welcomeStr)")
        
        //remove subRange
        let range = (welcomeStr.index(welcomeStr.endIndex, offsetBy: -6, limitedBy: welcomeStr.startIndex) ?? welcomeStr.startIndex)..<welcomeStr.endIndex
        welcomeStr.removeSubrange(range)
        print("welcomeStr remove range \(range) then is : \(welcomeStr)")
    }
    
}
