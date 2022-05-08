import UIKit


//Superclass
protocol VehicleInterface {
  func drive()
  func stop()
  func refuel()
  
 /*
  This method can't be implement on subclass Motorcycle
  so what can we do is implement ISP with this method
  */
//  func openDoors()
}

/*
  This is example of Interface Segregation
  class, so subclass motorcycle can implement
  Vehicle interface method without openDoors()
 */

protocol DoorInterface {
  func openDoors()
}


/*
 Motorcycle subclass that couldnt implement
 openDoors()
 */
class Motorcycle: VehicleInterface {
  func drive() {
    print("Start engine to drive")
  }
  
  func stop() {
    print("Stop engine")
  }
  
  func refuel() {
    print("refuel gas")
  }
  

}

/*
 This is car subclass that can implement Door interface
 and Vehicle interface
 */
class Car: VehicleInterface, DoorInterface{
  func openDoors() {
    print("Open the car doors")
  }
  
  func drive() {
    print("Drive the car")
  }
  
  func stop() {
    print("Stop the engin car")
  }
  
  func refuel() {
    print("refuel gas")
  }
  
  
}
