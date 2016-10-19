//: Playground - noun: a place where people can play

import UIKit



class Person {
    
    var name: String
    var height: Double
    var favoriteFood: String
    
    var description: String {
        return "Name: \(jim.name) \nHeight: \(jim.height) \nFavorite Food: \(jim.favoriteFood)"
    }
    
    init(name: String, height: Double, favoriteFood: String) {
        self.name = name
        self.height = height
        self.favoriteFood = favoriteFood
    }
    
}

let jim = Person(name: "Jim", height: 64.0, favoriteFood: "Pasta")

//print(jim.description)
//Name: Jim
//Height: 64.0
//Favorite Food: Pasta



protocol PrettyDescription {
    
    var description: String { get }
    
    func getRandomStatement() -> String
    
}


class Animal {
    
    var name: String
    var height: Double
    var favoriteFood: String
    
    init(name: String, height: Double, favoriteFood: String) {
        self.name = name
        self.height = height
        self.favoriteFood = favoriteFood
    }
    
}

var prettyThings: [PrettyDescription] = []

for prettyThing in prettyThings {
    
    print(prettyThing.description)
    
}

class Cat: PrettyDescription {
    func getRandomStatement() -> String {
        let statements = ["hello how are you?", "what is up?", "this is great"]
            let count = statements.count
            let index = Int(arc4random_uniform(UInt32(count)))
            return statements[index]
    }

    var description: String
    
    init(description: String) {
        self.description = description
    }
    
}

let Tiffany = Cat(description: "beautiful")
prettyThings = [Tiffany]
print(Tiffany.description)
print(prettyThings[0].description)
print(Tiffany.getRandomStatement())


