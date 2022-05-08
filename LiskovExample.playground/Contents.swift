import UIKit

//SuperClass or parent class
protocol Product {
  func getName() -> String
  func getProductInfo()
}

//Abstraction class to handle getExpiredDate method instead put in the super class
protocol FoodProduct: Product{
  func getExpiredDate() -> Date
}

/*
 SubClass inherite method getExpiredDate
 from superClass through Abstraction class Food Product
 */
class Vegetable: FoodProduct {
  func getProductInfo() {
    print("this is Vegetable information")
  }
  
  func getExpiredDate() -> Date {
    return Date()
  }
  
  func getName() -> String {
    return "timun"
  }

}

/*
 SubClass who dont need to inherite getExpiredDate method
 from SuperClass because the method irrelevant with subClass
 */
class SmartPhone: Product {
  func getProductInfo() {
    print("This is Smartphone specs information")
  }
  
  func getName() -> String {
    return "Nokia"
  }
}
