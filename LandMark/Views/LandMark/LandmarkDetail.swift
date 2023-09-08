//
//  LandmarkDetail.swift
//  LandMark
//
//  Created by mobile3 Aimmed on 2023/09/07.
//

import SwiftUI


import SwiftUI


struct LandmarkDetail: View {
    var landmark: Landmark
    @Binding var focus: Bool // 1. Binding으로 focus 변수 추가
    //@Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView {
            AppleMap(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
                .onTapGesture {
                    print("Selected Landmark: \(landmark.name)")
                }            
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                
                
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                
                Divider()
                
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
                
                
            }
            .padding()
            
            
            Spacer()
            Text("Latitude: \(landmark.locationCoordinate.latitude), Longitude: \(landmark.locationCoordinate.longitude)")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .onAppear(){
            focus = false
        }
        .onDisappear(){
            focus = true
        }
    }
}


struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            LandmarkDetail(landmark: landmarks[1], focus: .constant(false))
        }
        
    }
}
