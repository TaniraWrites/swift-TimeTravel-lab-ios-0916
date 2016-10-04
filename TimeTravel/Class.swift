//
//  Class.swift
//  TimeTravel
//
//  Created by Tanira Wiggins on 10/4/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class SpaceShip {
    let name: String
    let speed : Speed = .none
    var currentPlanet : Planet
    
    var description: String{
        return  "This is \(name) heading to \(currentPlanet) at whopping speed of \(speed)kmh. Strap yourself in folks it will be a smooth journey......hopefully."
    }
    
    init(name:String, planet:Planet){
        self.name = name
        self.currentPlanet = planet
    }
    func timeTravel()->Bool{
        if self.speed.canTimeTravel {
            return true
        }
        return false
    }
    
    func isFasterThan(than spaceShip: SpaceShip)->Bool{
        if self.speed.isFaster(than: spaceShip.speed){
            return true
        }
        return false
    }
    func travel(to planet:Planet)->Bool{
        //        switch planet{
        //        case (planet.rawValue == 2) && (self.speed == .fast) :
        //        currentPlanet = planet
        //            return true
        //        case
        if planet.rawValue == 2 && self.speed.rawValue >= 1000 {
            if self.speed.rawValue >= 1000000 {
                currentPlanet = Planet.mars
                return false
            }
            else {
                currentPlanet = planet
                return true
            }
        } else if planet.rawValue == 3 && self.speed.rawValue >= 1000{
            currentPlanet = planet
            return true
        } else if planet.rawValue == 4 && self.speed == .lightSpeed {
            currentPlanet = planet
            return true
        } else if planet.rawValue == 5 && self.speed.rawValue >= 50 {
            currentPlanet = planet
            return true
        } else if planet.rawValue == 6 && self.speed.rawValue >= 150 {
            currentPlanet = planet
            return true
        } else if planet.rawValue == 7 && self.speed.rawValue >= 50 {
            currentPlanet = planet
            return true
        } else if planet.rawValue == 8 && self.speed.rawValue >= 1000 {
            if self.speed.rawValue >= 1000000 {
                currentPlanet = Planet.mars
                return false
            }
            else {
                currentPlanet = planet
                return true
            }
        } else if currentPlanet == Planet.mercury {
            return false
        }
        return false
    }
    
}
