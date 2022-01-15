//
//  Dependency Injection.swift
//  SwiftBibill-New (iOS)
//
//  Created by Sanjay Kumar on 01/06/21.
//

import Foundation




/* Special case of Dependency Inversion is Dependency Injection */

/* in the example below we are injecting dependency to the Higher level Class */


protocol Dependency {
    func foo()
}

struct DependencyImplementation: Dependency {
    func foo() {
        // Does something
    }
}

class Client {
    let dependency: Dependency
    
    init(dependency: Dependency) {
        self.dependency = dependency
    }

    func foo() {
        dependency.foo()
    }
}

let client = Client(dependency: DependencyImplementation())
//client.foo()

//    ✓ Pros:
//
//    Provides best encapsulation.
//    Ensures that client object is always in a valid state.


//    ✕ Cons:
//
//    Dependencies cannot be changed later.
//    Becomes cumbersome with more than 3 dependencies. Consider property injection in this case.

/* ************ Property Injection ***********************/

protocol DependencyP {
    func foo()
}

struct DependencyImplementationP: DependencyP {
    func foo() {
        // Does something
    }
}

class ClientP {
    var dependencyP: DependencyP!
    
    func foo() {
        dependencyP.foo()
    }
}

let clientP = ClientP()
//clientP.dependencyP = DependencyImplementationP()
//client.foo()




//    ✓ Pros:
//
//    Allows to set dependencies later.
//    Provides readable way of constructing objects with many dependencies.


//    ✕ Cons:
//
//    Client might be left in inconsistent state if some dependencies are missing.
//    Leaks encapsulation.
