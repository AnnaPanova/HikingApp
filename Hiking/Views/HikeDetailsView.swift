//
//  HikeDetailsView.swift
//  Hiking
//
//  Created by Anna Panova on 05.06.24.
//

import Foundation
import SwiftUI

struct HikeDetailsView: View {
    
    let hike : Hike
    var body: some View {
        Text(hike.name)
    }
}
