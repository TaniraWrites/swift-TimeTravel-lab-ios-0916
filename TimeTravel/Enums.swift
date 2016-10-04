import Foundation

enum Speed: Double {
    case none = 0.0
    case slow = 50
    case medium = 150
    case fast = 1000
    case lightSpeed = 1000000
    
    init(spaceSpeed: Double) {
        switch spaceSpeed {
        case 0...49:
            self = Speed.none
        case 50...149:
            self = Speed.slow
        case 150...999:
            self = Speed.medium
        case 1000...999999:
            self = Speed.fast
        default:
            self = Speed.lightSpeed
        }
    }
    
    var canTimeTravel: Bool {
        if self.rawValue == Speed.lightSpeed.rawValue {
            return true
        } else {
            return false
        }
    }
    
    func isFaster(than speed: Speed) -> Bool {
        if self.rawValue  > speed.rawValue {
            return true
        } else {
            return false
        }
    }
    
    
}
enum Weather {
    case cold
    case warm
    case hot
    case superDuperHot
    
}

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
    case jupiter
    case saturn
    case uranus
    case neptune
    
    var hasLife:Bool {
        if self.rawValue == 3 || self.rawValue == 4{
            return true
        } else {
            return false
        }
    }
    
}//
//  Enums.swift
//  TimeTravel
//
//  Created by Tanira Wiggins on 10/4/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
