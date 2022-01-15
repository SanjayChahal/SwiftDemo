//
//  NSCopying- Protocol.swift
//  SwiftBibill-New (iOS)
//
//  Created by Sanjay Kumar on 02/06/21.
//

import Foundation

/* ********************* NSCopying***************** */
class Person: NSObject, NSCopying {
    var firstName: String
    var lastName: String
    var age: Int

    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }

    func copy(with zone: NSZone? = nil) -> Any {
        let copy = Person(firstName: firstName, lastName: lastName, age: age)
        return copy
    }
}



/*********************** equitable protocall*/
struct Strudent: Equatable {
  var firstName: String
  var secondName: String
  var faculty: String
  
  static func ==(lhs: Student, rhs: Student) -> Bool {
    //Logic that determines whether the value
    //on the left hand side and right hand side are equal
    return lhs.firstName == rhs.firstName &&
           lhs.secondName == rhs.secondName &&
           lhs.faculty == rhs.faculty
  }
}


/* compareble Protocol */


struct Student: Comparable {
  //2
    static func < (lhs: Student, rhs: Student) -> Bool {
        return lhs.secondName < rhs.secondName
    }
    
    var firstName: String
    var secondName: String
    var faculty: String
}
// < operator sorts secondName in ascending order
let sortedStudents = students.sorted(by: <)

for student in sortedStudents {
    print(student)
}
