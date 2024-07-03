class Car {
    var brand: String
    var model: String
    var year: Int
    var acceleration: Double
    
    init(brand: String, model: String, year: Int, acceleration: Double) {
        self.brand = brand
        self.model = model
        self.year = year
        self.acceleration = acceleration
    }
    
    func printCarInfo() {
        print(brand, model, year, acceleration)
    }
    
    func GetCarInfo() -> String{
            return "\(self.brand) \(self.model)"
    }
}

class ElectroCar: Car {
    var powerReserve: Int
    var batteryCapacity: Int
    
    init(powerReserve: Int, batteryCapacity: Int) {
        self.powerReserve = powerReserve
        self.batteryCapacity = batteryCapacity
        super.init(brand: <#T##String#>, model: <#T##String#>, year: <#T##Int#>, acceleration: <#T##Double#>)
    }
}

class GasolineCar: Car {
    var fuelEfficiency: Double
    var tankCapacity: Int
    
    init(brand: String, model: String, year: Int, acceleration: Double, fuelEfficiency: Double, tankCapacity: Int) {
        self.fuelEfficiency = fuelEfficiency
        self.tankCapacity = tankCapacity
        super.init(brand: brand, model: model, year: year, acceleration: acceleration)
    }
}

class HybridCar: Car {
    var electricRange: Int
    
    init(brand: String, model: String, year: Int, acceleration: Double, electricRange: Int, fuelEfficiency: Double) {
        self.electricRange = electricRange
        super.init(brand: brand, model: model, year: year, acceleration: acceleration)
    }
}

class SportsCar: Car {
    var topSpeed: Int
    var horsePower: Int
    
    init(brand: String, model: String, year: Int, acceleration: Double, topSpeed: Int, horsePower: Int) {
        self.topSpeed = topSpeed
        self.horsePower = horsePower
        super.init(brand: brand, model: model, year: year, acceleration: acceleration)
    }
}

func createCar(brand: String, model: String, year: Int, acceleration: Double ) -> Car {
    return Car(brand: brand, model: model, year: year, acceleration: acceleration)
}

func makeRace(firstCar : Car, secondCar : Car) -> Car {
        var winner = firstCar.acceleration <= secondCar.acceleration ? firstCar : secondCar
        return winner
}

var cars : [Car] = []
cars.append(createCar(brand: "BMW", model: "X5M", year: 2024, acceleration: 3.9))
cars.append(createCar(brand: "BMW", model: "M8", year: 2022, acceleration: 3.3))
cars.append(createCar(brand: "Tesla", model: "S", year: 2021, acceleration: 2.1))
cars.append(createCar(brand: "Lada", model: "Granta", year: 2024, acceleration: 10.5))

while cars.count > 1 {
    var newRound: [Car] = []
    var i = 0
    while i < cars.count {
        if i + 1 < cars.count {
            let winner = makeRace(firstCar: cars[i], secondCar: cars[i + 1])
            print("\(winner.GetCarInfo()) победил в драге \(cars[i + 1].GetCarInfo())")
            newRound.append(winner)
            i += 2
        } else {
            newRound.append(cars[i])
            i += 1
        }
    }
    cars = newRound
}
print("Победил")
cars[0].printCarInfo()

