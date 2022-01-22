//
//  Animal.swift
//  AnimalList
//
//  Created by Spencer Hurd on 1/10/22.
//

import Foundation


struct Animal: Identifiable, Hashable {
    var id = UUID().uuidString
    let name: String
    let sound: String
    let isMammal: Bool
}


