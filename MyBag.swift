import UIKit

//Ceate your own Bag of type array

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

