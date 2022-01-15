//
//  Solid Principles.swift
//  SwiftBibill-New (iOS)
//
//  Created by Sanjay Kumar on 01/06/21.
//

import Foundation
import UIKit


/* ***************** Dependency Inversion Principle Way */
/* Here we have Designed Api call from view, Making View independent of the Api client */
/* The provider we pass to the View Will calll the api itself and */



  

protocol UserNetworkService {

  func loadUsers(withURL url: URL, completion: @escaping (Result<[User], Error>) -> Void)
}



extension NetworkingA: UserNetworkService {
    
  func loadUsers(withURL url: URL, completion: @escaping (Result<[User], Error>) -> Void) {
    loadJSON(withURL: url, type: [User].self, completion: completion)
  }
}


extension NetworkingB: UserNetworkService {
    
  func loadUsers(withURL url: URL, completion: @escaping (Result<[User], Error>) -> Void) {
    load(url, type: [User].self, completion: completion)
  }
}



class UserService {
    
  let networkService: UserNetworkService

  init(networkService: UserNetworkService) {
    self.networkService = networkService
  }

  func getUser(withId userId: Int, completion: @escaping (User?) -> Void) {
    // ...
    networkService.loadUsers(withURL: "", completion: nil)
  }
}

 



