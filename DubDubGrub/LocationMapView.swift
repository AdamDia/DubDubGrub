//
//  LocationMapView.swift
//  DubDubGrub
//
//  Created by Adam Essam on 13/12/2022.
//

import SwiftUI
import MapKit

struct LocationMapView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.331516, longitude: -121.891054),
                                                   span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
            
           VStack{
               Image("ddg-map-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 70)
                    .shadow(radius: 10)
               Spacer()
            }
        }
        .safeAreaInset(edge: .bottom, alignment: .center, spacing: 0) { /// to prevent the map from overlaping the tabview
            Color.clear
                .frame(height: 3)
                .background(Material.bar)
        }
    }
}

struct LocationMapView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapView()
    }
}
