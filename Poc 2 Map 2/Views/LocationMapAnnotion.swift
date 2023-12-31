//
//  LocationMapAnnotion.swift
//  Poc 2 Map 2
//
//  Created by Raina Rodrigues de Lima on 19/09/23.
//

import SwiftUI
import MapKit

struct LocationMapAnnotion: View {
    
    let accentColor = Color("AccentColor")
    
    var body: some View {
        VStack(spacing: 0){
            Image(systemName: "house.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .font(.headline)
                .foregroundColor(.white)
                .padding(6)
                .background(accentColor)
                .cornerRadius(36)
            
            Image(systemName: "triangle.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(accentColor)
                .frame(width: 10, height: 10)
                .rotationEffect(Angle(degrees: 180))
                .offset(y:-3)
                .padding(.bottom, 35)
        }
    }
}

struct LocationMapAnnotion_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            LocationMapAnnotionView()
        }
    }
}
