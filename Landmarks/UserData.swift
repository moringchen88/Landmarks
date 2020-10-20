//
//  UserData.swift
//  Landmarks
//
//  Created by caichen on 2020/10/5.
//  Copyright © 2020 caichen. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject  {
    @Published  var showFavoritesOnly = false
    @Published  var landmarks = landmarkData
    @Published  var profile = Profile.default
}
