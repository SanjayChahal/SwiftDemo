import UIKit

extension Array{
    
    func jayFilter( completion: (Element)->(Bool)) -> [Element] {
        var arrReturn = [Element]()
        for element in self {
            if completion(element) {
                arrReturn.append(element)
            }
        }
        return arrReturn
    }
}

var subArray = arrFlyingOBJ.jayFilter { bird in
    return bird.speed < 20
}

print(subArray.count)
