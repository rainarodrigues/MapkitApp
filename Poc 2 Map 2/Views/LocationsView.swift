//
//  LocationsView.swift
//  Poc 2 Map 2
//
//  Created by Raina Rodrigues de Lima on 18/09/23.
//

import SwiftUI
import MapKit

struct LocationsView: View {
    
//    @StateObject private var vm = LocationsViewModel() 
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        ZStack{
//            Map(coordinateRegion: $vm.mapRegion)
//                .ignoresSafeArea()
            Map(coordinateRegion: $vm.mapRegion, annotationItems: vm.locations, annotationContent: {location  in MapMarker(coordinate:location.coordinates, tint:.blue)
            })
        }
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())
    }
}
