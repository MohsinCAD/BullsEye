//
//  Game.swift
//  BullsEye
//
//  Created by Mohsin on 2023-12-29.
//

import Foundation


struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = -1
    
    func points(sliderValue: Int) -> Int {
        100 - abs(sliderValue - target)
    }
    
}


