//
//  DataStore.swift
//  SpringAppHW1
//
//  Created by Иса on 18.11.2022.
//

import SpringAnimation

struct DataStore {
    
    static let shared = DataStore()
    var animations = AnimationPreset.allCases
    var curves = AnimationCurve.allCases
    private init() {}
    
}
