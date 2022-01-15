//
//  Codable.swift
//  Swift Bibill
//
//  Created by Sanjay Kumar on 22/05/21.
//

import Foundation


struct Stock: Codable {
    var warehouse: Int
    var retail: Int
}



struct Product: Codable {
    
    var id: Int
    var name: String
    var price: Int
    var types: [String]
    var stockInfo: Stock
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case price
        case types = "tags"
        case stockInfo = "stock"
    }
    
}





class Demo: NSObject {
    
    
    func fetchDataFromRemote() {
        
        let jsonString =
            """
            {
                "id": 1,
                "name": "chair",
                "price": 350,
                "tags": [
                "recliner",
                "foldable"
                ],
                "stock": {
                    "warehouse": 300,
                    "retail": 20
                }
            }
            """
        
        if let jsonData = jsonString.data(using: String.Encoding.utf8) {
            
            let decoder = JSONDecoder()
            
            let product = try! decoder.decode(Product.self, from: jsonData)
            
            print(product)
            
        }
    }
    
    
    func exampleEncodeFunction() {
        
        let tableStock = Stock.init(warehouse: 114, retail: 16)
        let table = Product.init(id: 112, name: "Long Table", price: 450, types: ["Long", "Study", "Short"], stockInfo: tableStock)
        
        let encoder = JSONEncoder()
        
        let productData = try! encoder.encode(table.self)
        
        let productStr = String.init(data: productData, encoding: .utf8)
        print("String from Product data is \(productStr ?? "No data")")
        
    }
    
}
//
//let encodedData = try JSONEncoder().encode(city)
//let jsonString = String(data: encodedData,
//                        encoding: .utf8)
