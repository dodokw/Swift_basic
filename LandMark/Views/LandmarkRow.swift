//
//  LandmarkRow.swift
//  LandMark
//
//  Created by mobile3 Aimmed on 2023/09/07.
//

import SwiftUI


struct LandmarkRow: View {
    var landmark: Landmark


    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite != false {
                Image(systemName: "star.fill")
                    .foregroundColor(.green)
            }
            
        }
    }
}


struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
                   LandmarkRow(landmark: landmarks[0])
                   LandmarkRow(landmark: landmarks[1])
               }
               .previewLayout(.fixed(width: 300, height: 70))
    }
}
