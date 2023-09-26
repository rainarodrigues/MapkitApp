//
//  Location.swift
//  Poc 2 Map 2
//
//  Created by Raina Rodrigues de Lima on 18/09/23.
//

import SwiftUI
import MapKit



struct Location: Identifiable, Equatable{
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    //variavél computada - identifiable
    var id: String {
        name + cityName
    }
    
    static func == (lhs: Location, rhs: Location) -> Bool {
           return lhs.id == rhs.id &&
                  lhs.name == rhs.name &&
                  lhs.coordinates.latitude == rhs.coordinates.latitude &&
                  lhs.coordinates.longitude == rhs.coordinates.longitude &&
                  lhs.description == rhs.description &&
                  lhs.imageNames == rhs.imageNames &&
                  lhs.link == rhs.link
       }
    
}
//
//struct Location_Previews: PreviewProvider {
//    static var previews: some View {
//        Location()
//    }
//}


