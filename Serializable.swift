//
//  Abstraction.swift
//  SwiftBibill-New (iOS)
//
//  Created by Sanjay Kumar on 02/06/21.
//

import Foundation

protocol Serializable {
    var properties: Array<String> { get }
    func valueForKey(key: String) -> Any?
    func toDictionary() -> [String:Any]
}

extension Serializable {
    func toDictionary() -> [String:Any] {
        var dict:[String:Any] = [:]
        
        for prop in self.properties {
            if let val = self.valueForKey(key: prop) as? String {
                dict[prop] = val
            } else if let val = self.valueForKey(key: prop) as? Int {
                dict[prop] = val
            } else if let val = self.valueForKey(key: prop) as? Double {
                dict[prop] = val
            } else if let val = self.valueForKey(key: prop) as? Array<String> {
                dict[prop] = val
            } else if let val = self.valueForKey(key: prop) as? Bool {
                dict[prop] = val
            }else if let val = self.valueForKey(key: prop) as? Serializable {
                dict[prop] = val.toDictionary()
            } else if let val = self.valueForKey(key: prop) as? Array<Serializable> {
                var arr = Array<[String:Any]>()
                
                for item in (val as Array<Serializable>) {
                    arr.append(item.toDictionary())
                }
                
                dict[prop] = arr
            }
            else if let val = self.valueForKey(key: prop) as? Dictionary<String,Any> {
                dict[prop] = val
            }
        }
        
        return dict
    }
}
