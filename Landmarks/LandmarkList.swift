//
//  LandmarkList.swift
//  Landmarks
//
//  Created by caichen on 2020/10/1.
//  Copyright © 2020 caichen. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var userData : UserData
    
    var body: some View {
        //NavigationView {
        List{
            
            Toggle(isOn: $userData.showFavoritesOnly){
                Text("Favorites only")
            }
            
            ForEach(userData.landmarks){
                landmark in
                if (!self.userData.showFavoritesOnly || landmark.isFavorite)
                {
                    NavigationLink(destination: LandmarkDetail(landmark:landmark)
                        .environmentObject(self.userData))
                    {
                        LandmarkRow(landmark:landmark)
                    }
                }
            }
            
        }
        .navigationBarTitle(Text("Landmarks"))
        //}
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LandmarkList().environmentObject(UserData())
        }
    }
}
