//
//  LocationsViewModel.swift
//  Poc 2 Map 2
//
//  Created by Raina Rodrigues de Lima on 18/09/23.
//

import Foundation
import MapKit

class LocationsViewModel: ObservableObject{
    
    //todos os pontos do mapa carregado
    @Published var locations: [Location]
    
    //Localização atual no mapa
    @Published var mapLocation: Location{
        didSet{
            updateMapRegiaon(location: mapLocation)
        }
    }
    
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    init(){
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.updateMapRegiaon(location: locations.first!)
    }
    
//    private func updateMapRegiaon(location: Location){
//        withAnimation(.easeInOut){
//            mapRegion = MKCoordinateRegion(center: location[].coordinates, span: mapSpan)
//        }
//    }
    
    private func updateMapRegiaon(location: Location){
        mapRegion = MKCoordinateRegion(center: location.coordinates, span: mapSpan)
    }
}