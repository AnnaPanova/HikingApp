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
        NavigationStack {
            List(hikes) { hike in
                //set up link for navigation. (Value)-for typialising of providing data
                NavigationLink(value: hike) {
                    CellHikeView(hike: hike)
                }
            }
            .navigationTitle("Hikes")
            //set up navigation destination. Type of data has to be the same as by value into a link
            .navigationDestination(for: Hike.self) { hike in
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

//extracted cell for displaying hike
struct CellHikeView: View {
    let hike : Hike
    
    var body: some View {
        HStack(alignment: .top){
            Image(hike.photo)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 16,style: .continuous))
                .frame(width: 100)
            
            VStack(alignment: .leading) {
                Text(hike.name)
                    .font(.title2)
                    .bold()
                Text("Distance: \((hike.miles).formatted()) miles")
            }
        }
    }
}
