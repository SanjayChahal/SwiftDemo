//
//  DispatchGroup.swift
//  SwiftBibill-New (iOS)
//
//  Created by Sanjay Kumar on 30/05/21.
//

import Foundation
import UIKit


//**************************DISPATCH GROUP **************************************************

class DispatchGroupDemo: NSObject {
    
    func performViewResponseDownload(){
        
        let group = DispatchGroup()
        
        group.enter()
        self.getResponseFor { (response, isSuccess) in
            group.leave()
        }
        
        group.enter()
        self.getResponseForCards { (response, isSuccess) in
            group.leave()
        }
        
        
        group.notify(queue: .main){
            
        }
        
        
    }
    
    
    func getResponseForCards(completionHandler: @escaping ((_ response:NSData, _ isSucess:Bool)->Void)){
        
    }
    
    func getResponseFor(completionHandler: @escaping ((_ response:NSData, _ isSucess:Bool)->Void)) {
        
    }
}

//********************* Search Bar with Dispatch Work Item **********************************

class SearchViewController: UIViewController, UISearchBarDelegate {
    // We keep track of the pending work item as a property
    private var pendingRequestWorkItem: DispatchWorkItem?

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        // Cancel the currently pending item
        pendingRequestWorkItem?.cancel()

        // Wrap our request in a work item
        let requestWorkItem = DispatchWorkItem { [weak self] in
            //self?.resultsLoader.loadResults(forQuery: searchText)
        }

        // Save the new work item and execute it after 250 ms
        pendingRequestWorkItem = requestWorkItem
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(250),
                                      execute: requestWorkItem)
    }
}




class DemoClassSemaphore:NSObject{
    
    
    func semaphoreDownloadTask(){
        
        //**************************SemaPhore GROUP **************************************************

        /* 3 images can be download at once */
        let queue = DispatchQueue(label: "com.gcd.myQueue", attributes: .concurrent)
        let semaphore = DispatchSemaphore(value: 3)
        
        
        for i in 0 ... 15 {
           queue.async {
              let songNumber = i + 1
              semaphore.wait()
              print("Downloading song", songNumber)
              sleep(2) // Download take ~2 sec each
              print("Downloaded song", songNumber)
              semaphore.signal()
           }
        }
        
    }
}

























