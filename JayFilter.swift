import UIKit





var greeting = "Hello, playground"



protocol Bird {
    
    var speed:Int { get set }
    
    func fly()
}

extension Bird{
    func fly(){
        print("fly like a bird")
    }
}

protocol Machine{
    func startNow()
}







class Parate:Bird{
    
    
    var speed:Int = 10
     
   
}

class Crow:Bird{
    var speed:Int = 10
     
}

class Aerowplane:Machine, Bird{
    
    var speed = 100
    func fly(flyingSpeed:Int) {
        print("fly like an eroplabe")
    }
    
    func startNow() {
        print("i started")
    }
    
}


var arrFlyingOBJ:[Bird] = [Crow(),Parate(),Aerowplane()]







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

//for item in arrFlyingOBJ{
//
//    item.fly()
//}


class Bag<Elements>{
    
    private var arrayIn:[Elements]?
    
    init() {
        self.arrayIn = []
    }
    
    func addElement(newElement:Elements){
        self.arrayIn?.append(newElement)
    }
    
    func removeElement(){
        self.arrayIn?.removeLast()
    }
    
    
    
}

extension Bag where Elements == Int {
    
    
    func getSum()->Int{
        return 0
    }
}


var objBag = Bag<Int>()

objBag.addElement(newElement:1)
objBag.getSum()

