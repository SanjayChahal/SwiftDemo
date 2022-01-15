//
//  Closure.swift
//  Swift Bibill
//
//  Created by Sanjay Kumar on 24/05/21.
//

import Foundation

 
var completionHandlers = [() -> Void]()

func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}


func someFunctionWithNonescapingClosure(closure: () -> Void) {
    closure()
}

class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure { self.x = 100 }
        someFunctionWithNonescapingClosure { x = 200 }
    }
}

//let instance = SomeClass()
//instance.doSomething()
//print(instance.x)
//// Prints "200"
//
//completionHandlers.first?()
//print(instance.x)
// Prints "100"







 
