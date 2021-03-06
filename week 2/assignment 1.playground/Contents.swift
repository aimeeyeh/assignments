import UIKit

//Object-Oriented Swift-----------------------------------------------------------------------------


//1.
class Animal {
    enum Gender {
        case male
        case female
        case undefined
    }
    
    func eat(){
        print("I eat everything!")
    }
}


//2.
class Elephant: Animal {
    override func eat() {
        print("I eat root!")
    }
}

class Tiger: Animal {
    override func eat() {
        print("I eat meat!")
    }
}

class Horse: Animal {
    override func eat() {
        print("I eat grass!")
    }
}


//3.
class Zoo {
    var weeklyHot: Animal
    init(weeklyHot: Animal){
        self.weeklyHot = weeklyHot
    }
}

let zoo = Zoo(weeklyHot: Tiger())

let tiger = Tiger()
let elephant = Elephant()
let horse = Horse()

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse

    
//4.
/* Classes have additional capabilities that structures don’t have:
    - Inheritance enables one class to inherit the characteristics of another.
    - Type casting enables you to check and interpret the type of a class instance at runtime.
    - Deinitializers enable an instance of a class to free up any resources it has assigned.
    - Reference counting allows more than one reference to a class instance.
    - Structures are value types whereas Classes are reference types.
    - An instance of a Structure is conceptually "values" whereas Class instances are "objects" with identity.
    - Structures copy their values when used in new place whereas classes show their data.
    - Structures are immutable when delcared as constants whereas class properties are mutable.
 */


//5.
//A instance method is a method that you can call on an instance of a particular type(after the instance is created) whereas a type method is a method that can be called directly on the type without creating an instance of that type.


//6.

//All structures have an automatically generated memberwise initializer, which you can use to initialize the member properties of new structure instances. When you call a memberwise initializer, you can omit values for any properties that have default values.

//Initializers for class types ensure all stored properties receive an initial value. These are known as designated initializers and convenience initializers.



//7.
//self in an instance is exactly equivalent to the instance itself. You use the self property to refer to the current instance within its own instance methods.

//self in a type method refers to the type itself, rather than an instance of that type.        (This means that you can use self to disambiguate between type properties and type method parameters, just as you do for instance properties and instance method parameters)


//8.
//A value type instance keeps a unique copy of its data, for example, a struct or an enum. A reference type, shares a single copy of its data, and the type is usually a class


//Enumerations and Optionals in Swift---------------------------------------------------------------


//1.
enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case diesel = "diesel"
    
    func getPrice() -> String{
        switch self{
        case .oil92:
            return "The price of \(self) is $25.6/L"
        case .oil95:
            return "The price of \(self) is $27.1/L"
        case .oil98:
            return "The price of \(self) is $29.1/L"
        case .diesel:
            return "The price of \(self) is $22.9/L"
        }
    }
}

let gas = Gasoline.oil92
print(gas.getPrice())

print(Gasoline.oil92.rawValue)

//Enum ​associate values​ let you attach additional information to your enums so they can represent more nuanced data. Compare to the raw values, associated values are set when you create a new constant or variable based on one of the enumeration’s cases, and can be different each time you do so.


//2.
class Pet {
    var name: String? = "Coffee"
}

class People {
    var pet: Pet?
}


let aimee = People()

func showPetName(){
    guard let petName = aimee.pet?.name else{
    print("Aimee has no pet.")
    return
    }
    print("Aimee has a pet named \(petName).")
}

showPetName()


let cindy = People()
cindy.pet = Pet()

if let petName = cindy.pet?.name{
    print("Cindy has a pet named \(petName).")
} else {
    print("Cindy has no pet.")
}


//Protocol in Swift---------------------------------------------------------------------------------


//1. //2. //4.
struct Person: PoliceMan{
    func arrestCriminals(){}
    let name: String
    let toolMan: ToolMan
}

protocol PoliceMan {
    func arrestCriminals()
}

//3.
protocol ToolMan {
    func fixComputer()
}


//5.
struct Engineer: ToolMan {
    func fixComputer(){}
}


//6.
let enginner = Engineer()
let person = Person(name: "Steven", toolMan: enginner )


//Error Handling in Swift---------------------------------------------------------------------------


enum GuessNumberGameError: Error{
    case wrongNumber
}

class GuessNumerGame{
    var targetNumber = 10
    func guess(number: Int) throws {
        guard number == targetNumber else{
            throw GuessNumberGameError.wrongNumber
        }
        print("Guess the right number: \(targetNumber)")
    }
}

let guessNumber = GuessNumerGame()


do {
    try guessNumber.guess(number: 20)
} catch GuessNumberGameError.wrongNumber {
    print("Guess again!")
}

