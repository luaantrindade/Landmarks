//
//  MapView.swift
//  Landmarks
//
//  Created by Jeff on 21/12/2020.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 33.881866, longitude: -115.900650),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )

    var body: some View {
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
        }

}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
