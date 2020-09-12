import UIKit

class Spaceship {
    
    var fuelLevel = 100
    var name = ""
    
    func cruise () {
        // Code to initiate cruising
        print("Cruising is initaited for \(name)")
    }
    
    func thrust() {
        // Code to initiate rocket thrusters
        print("Rocket thrusters initiated for \(name)")
    }
}

var myShip:Spaceship = Spaceship()

myShip.name = "Calvin"
print(myShip.name)
print(myShip.fuelLevel)
myShip.cruise()

