//
//  CollectionTypes.swift
//  SwiftLearning
//
//  Created by chen on 16/11/23.
//  Copyright © 2016年 none. All rights reserved.
//

import Cocoa

class CollectionTypes: NSObject {
    
    override init () {
        super.init()
        self.colloectionsDisplay()
    }
    
    func colloectionsDisplay() -> Void {
        var someInts = [Int]()
        someInts.append(3)
        someInts.append(5)
        someInts.insert(2, at: 0)
        
        for i in someInts {
            print("\(i)", terminator: " ")
        }
        print("")
        someInts = []
        print("someInts has \(someInts.count) items")
        
        let threeDoubles = Array(repeating: 0.0, count: 3)
        print("\(threeDoubles)")
        
        let anotherthreeDoubles = Array(repeating: 2.5, count: 5)
        let sixDoubles = threeDoubles + anotherthreeDoubles
        print("\(sixDoubles)")
        
        var shoppingList: [String] = ["Eggs", "Milk"]
        // 集合可以使用 布尔属性 isEmpty 检查count是否为0
        if shoppingList.isEmpty {
            print("The shoppingList is Empty")
        } else {
            print("The shoppingList is not empty")
        }
        
        shoppingList.append("Flour")
        shoppingList += ["Baking Powder"]
        shoppingList += ["Cheese", "Butter"]
        print("\(shoppingList)")
        
        let firstItem = shoppingList[0]
        print("The first item of shoppingList is \(firstItem)")
        
        shoppingList[0] = "Six Eggs"
        print("shoppingList has \(shoppingList.count) itmes -- \(shoppingList)")
        
        shoppingList[3...5] = ["Bananas", "Apples"]
        print("shoppingList has \(shoppingList.count) itmes -- \(shoppingList)")
        
        // set
        var letters = Set<Character>()
        letters.insert("a")
        print("\(letters)")
        
        letters = []
        print("\(letters)")
        
        var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip Hop"]
        let favoriteMovies: Set = ["Comic"]
        favoriteGenres.insert("Jazz")
        if let removeGenre = favoriteGenres.remove("Rock") {
            print("\(removeGenre)? I over it.")
        } else {
            print("I never much cared for that.")
        }
        
        if favoriteMovies.contains("Comic") {
            print("I love the comic")
        }
        
        for genre in favoriteGenres {
            print("\(genre)")
        }
        
        let oddDigits: Set = [1, 3, 5, 7, 9]
        let evenDigits: Set = [0, 2, 4, 6, 8]
        print("\(oddDigits.union(evenDigits).sorted())")
        
    }
    
}
