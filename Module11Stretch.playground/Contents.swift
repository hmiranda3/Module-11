//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol Vehicle {
    var speed: Double { get set}
    
    var isMoving: Bool { get set }
    
    func startMoving()
    func stopMoving()
}

class LawnMower: Vehicle {
    
    var speed: Double
    var isMoving: Bool
    
    init(speed: Double, isMoving: Bool) {
        self.speed = speed
        self.isMoving = isMoving
    }
    
    func startMoving() {
        
        
    }
    
    func stopMoving() {
        <#code#>
    }
}

class Truck: Vehicle {
    
    var speed: Double
    var isMoving: Bool
    
    init(speed: Double, isMoving: Bool) {
        self.speed = speed
        self.isMoving = isMoving
    }
    
    func startMoving() {
        <#code#>
    }
    
    func stopMoving() {
        <#code#>
    }
    
    
    
}



