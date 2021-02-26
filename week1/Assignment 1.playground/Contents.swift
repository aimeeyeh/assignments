import UIKit

//Basic----------------------------------------------------------------------------------------

//1.
var Pi: Float = 3.14


//2.
let x: Int = 2
let y: Int = 4
let average = (x+y)/2


//3.
let record = Double(average)

let answerOne = 10/3
//Since 10 and 3 are both integers, 10/3 will also return an integer.
let answerTwo = 10.0/3.0
//10.0 and 3.0 are doubles, therefore 10.0/3.0 will return a double.


//4.
var flag: Bool = true
var inputString: String = "Hello World"
let bitsInBite: Int = 8
let averageScore: Double = 86.8


//5.
var salary = 22000
salary += 28000


//6.
//the Equality operator is ==
1 == 1


//7.
let a = 10
let b = 3
let remain = 10%3


//8.
//let is used to declare a constant(which the value can not be changed afterwards) and var is used to declare a varibale. The value of a constant can’t be changed once it’s set, whereas a variable can be set to a different value in the future.


//9.
/* Naming conventions:
- Start the name with a lowercase letter, and capitalise the first letter of embedded words. (camel case)
- Try to be both clear and as brief as possible, but remember not to compromise clarity because of brevity.
- For methods that represent the actions an object takes, start the name with a verb — e.g, calculateSomeValue , displayItem.
 */


//10.
let c = 5
type(of: c)
//Swift uses type inference to work out c is an Int because 5 looks like an Integer.
//Type inference enables a compiler to deduce the type of a particular expression automatically when it compiles your code, simply by examining the values you provide.


//11.
var phoneNumber = 0987654321
//phoneNumber = "Hello World."
//phoneNumber is an Int, cannot assign value of type 'String' to type 'Int'



//Collection ---------------------------------------------------------------------------------------

//1.
var myFriends: [String] = []


//2.
myFriends += ["Ian", "Bomi", "Kevin"]


//3.
myFriends.append("Michael")


//4.
myFriends.swapAt(0, 2)


//5.
for friend in myFriends {
    print(friend)
}


//6.
//An eror will occur because there is no index 5 in the array (index out of range).


//7.
myFriends.first


//8.
myFriends.last


//9
var myCountryNumber: [String: Int] = [:]


//10.
myCountryNumber = ["US": 1, "GB": 44, "JP": 81]


//11.
myCountryNumber["GB"] = 0


//12.
//You first specify the types for both the keys and the values with a colon right after the key type. Then to create an empty dictionary, put an colon between a pair of square brackets.
var emptyDictionary: [String: Int] = [:]


//13.
//You can either use .removeValue or changing the value to nil
myCountryNumber.removeValue(forKey: "US")
myCountryNumber["GB"] = nil



//Control Flow -------------------------------------------------------------------------------------

//1.
let lottoNumbers = [10, 9, 8, 7, 6, 5]
for i in 3...5 {
    print(lottoNumbers[i])
}



//2.

for i in 5...10 {
    print(i)
}

//print(10)
//print(8)
//print(6)

for j in (3...5).reversed() {
    print(j*2)
}



//3.
var i = 5
while i < 11 {
    print(i)
    i += 1
}

var j = 10
while j >= 6 {
    print(j)
    j -= 2
}


//4.
i = 5
repeat{
    print(i)
    i += 1
}while i < 11

j = 10
repeat{
    print(j)
    j -= 2
}while j >= 6


//5.
//repeat-while gurantees the loop to execute at least once before checking the condition. A while loop checks the condition before the loop code and repeat-while checks the condition afterwards.


//6.
var isRaining = true
if isRaining {
    print("It’s raining, I don’t want to work today.")
}else{
    print("Although it’s sunny, I still don’t want to work today."
)
}


//7.
var jobLevel = 3

switch jobLevel {
case 1:
    print("Member")
case 2:
    print("Team Leader")
case 3:
    print("Manager")
case 4:
    print("Director")
default:
    print("We don't have this job")
}

//Function -----------------------------------------------------------------------------------------

//1.
func greet (person name: String) -> String{
    "Hello, \(name)"
}

greet(person: "Celeste")


//2.
func multiply(a: Int, b: Int = 10){
    print(a*b)
}
multiply(a: 5)


//3.The argument label is used when calling the function; each argument is written in the function call with its argument label before it. The parameter name is used in the implementation of the function. By default, parameters use their parameter name as their argument label.


//4.
//func​ birthday( ) -> ​String​ { }  retuns String
//func​ payment( ) -> ​Double​ { } returns Double
