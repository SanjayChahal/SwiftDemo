//
//  ErrorHandling .swift
//  Swift Bibill
//
//  Created by Sanjay Kumar on 24/05/21.
//

import Foundation


enum ErrorsToThrow: Error {
    case fileNotFound
    case fileNotReadable
    case fileSizeIsTooHigh
    case internetNotConnected
    case unknownErrorOccured
    
}


func readFiles(path:String) throws ->String {
    
    let fileNotFound = true
    let fileNotReadable = false
    let fileSizeIsTooHigh = false
    
    
    
    if fileNotFound {
        throw ErrorsToThrow.fileNotFound
    } else if fileNotReadable {
        throw ErrorsToThrow.fileNotReadable
    } else if fileSizeIsTooHigh {
        throw ErrorsToThrow.fileSizeIsTooHigh
    }
    return "Data from file"
}



func letsDoSomehingWithFile(){
    do {
        let _ = try? readFiles(path: "path for file")
    } catch ErrorsToThrow.fileNotFound {
        print("fileNotFound")
    } catch ErrorsToThrow.fileNotReadable {
        print("fileNotReadable")
    } catch ErrorsToThrow.fileSizeIsTooHigh {
        print("fileSizeIsTooHigh")
    }
}


// try can only be used inside a do - catch block
// try? can be used to initialize an optional block of code
// try! can be used ditrect but it can break the code if any error occured

 

