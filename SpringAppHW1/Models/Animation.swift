//
//  Animation.swift
//  SpringAppHW1
//
//  Created by Иса on 18.11.2022.
//

struct Animation {
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        animation: \(name)
        curve: \(curve)
        force: \(String(format: "%.2f", force))
        duration: \(String(format: "%.2f", duration))
        delay: \(String(format: "%.2f", delay))
        """
    }
    
    static func getAnimation() -> Animation {
        Animation(
            name: DataStore.shared.animations.randomElement()?.rawValue ?? "fall",
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 1...1.2),
            duration: Double.random(in: 1.1...1.3),
            delay: Double.random(in: 0.2...0.5)
        )
    }
}
