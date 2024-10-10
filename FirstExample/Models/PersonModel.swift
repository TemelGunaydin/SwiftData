import Foundation
import SwiftData

@Model
class PersonModel {
    var age: Int
    var name: String
    
    init(age: Int = 0 , name: String = "") {
        self.age = age
        self.name = name
    }
}
