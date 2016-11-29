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
        
    }
    
}
