//
//  Thread Safe Array.swift
//  SwiftBibill-New (iOS)
//
//  Created by Sanjay Kumar on 31/05/21.
//

import Foundation


/* ************ To create a thread safe array *****************
 
 we will take a concurrent queue
 
 so that all read operations can be performed concurrently
 
 and to perform write operation we will add barrier flag so that while writing only one operation is performed
 
 barier flag will ristrict all other threads  while one thread is writing to the resource.
 
 .barrier  provides the functionality of serrial queue while using the concurrent queue
 
 */


class ThreadSafeArray{
    
    
    private var array:[Int]
     
    private var concurrentQueue = DispatchQueue(label: "concurrent.array.myApp", attributes: .concurrent)
    
    
    init(array:[Int]) {
        self.array = array
    }
    
    
    public func apendElement(_ element:Int){
        self.concurrentQueue.async( flags: .barrier) {
            self.array.append(element)
        }
    }
    
    
    public func elementAtIndex(_ index:Int)-> Int{
        self.concurrentQueue.sync {
            return self.array[index]
        }
    }
}








