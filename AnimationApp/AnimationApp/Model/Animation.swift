//
//  Animations.swift
//  AnimationApp
//
//  Created by Тадевос Курдоглян on 04.08.2021.
//

import Spring

struct Animation {
    let animationPreset: Spring.AnimationPreset
    let curve: Spring.AnimationCurve
    var duration: Double
    
    static func getAnimation() -> Animation {
        return Animation(animationPreset: Spring.AnimationPreset.allCases.randomElement() ?? .fadeIn, curve: Spring.AnimationCurve.allCases.randomElement() ?? .easeIn, duration: Double.random(in: 1...2.0))
    }
}
