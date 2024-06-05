//
//  Hike.swift
//  Hiking
//
//  Created by Anna Panova on 04.06.24.
//

import Foundation


// sigle hike

struct Hike: Identifiable, Hashable {
    
    // to confirm Identifiable Hike has to have unic identifier:
    let id = UUID()
    
    // description of hike:
    let name: String
    let photo: String
    let miles: Double
}
