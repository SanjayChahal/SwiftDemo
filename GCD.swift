//
//  GCD.swift
//  SwiftBibill-New (iOS)
//
//  Created by Sanjay Kumar on 30/05/21.
//

import Foundation
import UIKit



/* *******  DIspatch Queue */

//Types of Queue

class DispatchDemo:NSObject{
    
    /* Serial Queue */
    
    func serialQueue(){
        
        let queue = DispatchQueue(label: "serial queue")
        
        queue.sync {
            print("serially")
        }
        
        queue.async {
            print("print asynchronously")
        }
        
    }
    
    /* Concurent Queue*/
    
    func concurentQueue(){
        
        //***Quality Of Service *********
        
        let concruentQueue = DispatchQueue(label: "concruentQueue", qos: .userInitiated, attributes: .concurrent)
        
        concruentQueue.async {
            print("asynchronously")
        }
        
        concruentQueue.sync {
            
        }
    }
    
    
    func dispatchQueueMainDemo() {
        
        DispatchQueue.main.async {
            
        }
        
        DispatchQueue.main.sync {
            
        }
        
        DispatchQueue.global().async {
            
        }
        
        DispatchQueue.global().sync {
            
        }
    }
    
    
}
