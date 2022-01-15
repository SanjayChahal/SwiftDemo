//
//  Property Observer.swift
//  SwiftBibill-New (iOS)
//
//  Created by Sanjay Kumar on 29/05/21.
//

import Foundation




/*  You can add property observers in the following places:
 Stored properties that you define
 Stored properties that you inherit
 Computed properties that you inherit
 */


class StepCounter{
    
    var totalSteps: Int = 0 {
        
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
            
        }
        
        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
                
            }
        }
        
    }
    
}




//*************** Notes **********************

/* The willSet and didSet observers of superclass properties are called when a property is set in a subclass initializer, after the superclass initializer has been called. They aren’t called while a class is setting its own properties, before the superclass initializer has been called.
 */

/* If you pass a property that has observers to a function as an in-out parameter, the willSet and didSet observers are always called. This is because of the copy-in copy-out memory model for in-out parameters: The value is always written back to the property at the end of the function.
 */
