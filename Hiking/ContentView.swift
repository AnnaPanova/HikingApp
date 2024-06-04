//
//  ContentView.swift
//  Hiking
//
//  Created by Anna Panova on 04.06.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // list of hikes:
        let hikes = [
            Hike(name: "Salmonberry Trail", photo: "sal", miles: 6),
            Hike(name: "Tom, Dick, and Harry Mountain", photo: "tom", miles: 5.8),
            Hike(name: "Tamanawas Falls", photo: "tam", miles: 5)
        ]
        
        List(hikes) { hike in
            HStack{
                Text(hike.name)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
