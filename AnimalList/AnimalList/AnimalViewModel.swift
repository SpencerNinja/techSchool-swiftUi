//
//  AnimalViewModel.swift
//  AnimalList
//
//  Created by Spencer Hurd on 1/10/22.
//

import Foundation

class AnimalViewModel: ObservableObject {
    
    @Published var animals = [
        Animal(name: "hippo", sound: "cacaw", isMammal: true),
        Animal(name: "zebra", sound: "mooo", isMammal: true),
        Animal(name: "emu", sound: "baaww", isMammal: false)
    ]
    
}
