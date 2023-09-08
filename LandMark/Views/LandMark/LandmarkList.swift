//
//  LandmarkList.swift
//  LandMark
//
//  Created by mobile3 Aimmed on 2023/09/07.
//

import SwiftUI


struct LandmarkList: View {
    @State private var focus : Bool = false
    init(){
        UIScrollView.appearance().bounces = false
        UIScrollView.appearance().showsVerticalScrollIndicator = false
    }
    var body: some View {
        VStack{
            if(focus == true){
                Text("title")
            }
            NavigationView() {
                List(landmarks.indices, id: \.self) { index in
                    NavigationLink {
                        LandmarkDetail(landmark: landmarks[index], focus: self.$focus)
                    } label: {
                        LandmarkRow(landmark: landmarks[index])
                    }
                }
            }
            .onAppear() {
                focus = true
            }
            
        }
    }
}


struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
