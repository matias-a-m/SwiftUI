//
//  MapView.swift
//  complementViews
//
//  Created by matias on 16/12/2023.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
        let coordinate = CLLocationCoordinate2D(latitude: -40.0000000, longitude: -64.0000000)
        
        let span = MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 30)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        uiView.setRegion(region, animated: true)
        
    }
    
    
    func makeUIView(context: Context) -> MKMapView {
        return MKMapView(frame: .zero)
    }
}

#Preview {
    MapView()
}
