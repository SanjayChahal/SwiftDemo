//
//  Enums.swift
//  SwiftBibill-New (iOS)
//
//  Created by Sanjay Kumar on 28/05/21.
//

import Foundation
 



enum CompassPoint:String{
    
    case north = "north"
    case south = "south"
    case east  = "east"
    case west  = "west"
}


//the row value can be a string, a character, or a value of any integer or floating-point type.

/*  Swift enumeration cases don’t have an integer value set by default,
 unlike languages like C and Objective-C. In the CompassPoint example above,
 north, south, east and west don’t implicitly equal 0, 1, 2 and 3. Instead,
 the different enumeration cases are values in their own right,
 with an explicitly defined type of CompassPoint. */


//**********Iterate
enum Beverage:CaseIterable{
 case coffee, tea, juice
}
 let numberOfChoices = Beverage.allCases.count
//print("\(numberOfChoices)beveragesavailable")
//
//   for beverage in Beverage.allCases {
//      print(beverage)
//   }



//********* Associated Value *************

enum Barcode{
 case upc(Int, Int, Int, Int)
 case qrCode(String)
}



var productBarcode = Barcode.upc(8, 85909, 51226, 3)

//productBarcode = .qrCode("87686767676")


//Raw values are not the same as associated values. Raw values are set to prepopulated values when you first define the enumeration in your code, like the three ASCII codes above. The raw value for a particular enumeration case is always the same. Associated values are set when you create a new constant or variable based on one of the enumeration’s cases, and can be different each time you do so.
