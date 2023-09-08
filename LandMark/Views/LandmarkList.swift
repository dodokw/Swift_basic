//
//  LandmarkList.swift
//  LandMark
//
//  Created by mobile3 Aimmed on 2023/09/07.
//

import SwiftUI


struct LandmarkList: View {
    init(){
        UIScrollView.appearance().bounces = false
        UIScrollView.appearance().showsVerticalScrollIndicator = false
    }
    var body: some View {
        NavigationView() {
            List(landmarks.indices, id: \.self) { index in
                NavigationLink {
                    LandmarkDetail(landmark: landmarks[index])
                } label: {
                    LandmarkRow(landmark: landmarks[index])
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}


struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
