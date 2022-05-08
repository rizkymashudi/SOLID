import UIKit

class Cinema {
  func calculateAdminFee() -> Double { return 0.0 }
}

class RegularCinema: Cinema {
  var price: Double
  init(price: Double) {
    self.price = price
  }
  
  override func calculateAdminFee() -> Double {
    return price * 10 / 100
  }
}

class DeluxCinema: Cinema {
  var price: Double
  init(price: Double) {
    self.price = price
  }
  
  override func calculateAdminFee() -> Double {
    return price * 15 / 100
  }
}

class PremiumCinema: Cinema {
  var price: Double
  init(price: Double) {
    self.price = price
  }
  
  override func calculateAdminFee() -> Double {
    return price * 20 / 100
  }
}

class FamilyCinema: Cinema {
  var price: Double
  init(price: Double) {
    self.price = price
  }
  
  override func calculateAdminFee() -> Double {
    return price * 30 / 100
  }
}

let regulerCinema = RegularCinema(price: 35000.0)
let adminFee = regulerCinema.calculateAdminFee()
print(adminFee)
