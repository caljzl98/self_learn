import UIKit

var str = "Hello, playground"

// Basic function
func sayHello() {
    
    print("Hello!")
    
}
sayHello()

// Function with parameters
func sayHelloTo(name:String, age:Int) {
    
    print("Hello \(name), you're \(age) years old")
    //print("Hello, " + name)
    
}
sayHelloTo(name: "Brandon", age: 21)

// Function with parameters "underscores" to omit the argument label
func sayHelloTo2(_ name:String, _ age:Int) {
    
    print("Hello \(name), you're \(age) years old")
    
}
// you omit the argument label
sayHelloTo2("Calvin", 22)

// Function with return value
func addFourTo(x:Int) -> Int {
    
    let sum = x + 4
    
    return sum
}
var result = addFourTo(x: 3)
print(result)
