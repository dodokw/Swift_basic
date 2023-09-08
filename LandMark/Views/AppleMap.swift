//
//  SwiftUIView.swift
//  LandMark
//
//  Created by mobile3 Aimmed on 2023/09/07.
//

import SwiftUI
import MapKit

struct AppleMap: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()


    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
    }


    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}


struct AppleMap_Previews: PreviewProvider {
    static var previews: some View {
        AppleMap(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
