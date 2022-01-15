//
//  ValueReferenceType.swift
//  Swift Bibill
//
//  Created by Sanjay Kumar on 26/05/21.
//

import Foundation




class DemoClass: NSObject {
    
    func doingThings(){
        var name = "Sanjay Chahal"
        var myName = name
        myName = "Sanjay Kumar"
        
        
        print("name: \(name)")
        print("myName: \(myName)")
        
    }
}



 
