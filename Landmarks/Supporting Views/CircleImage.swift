//
//  CircleImage.swift
//  Landmarks
//
//  Created by caichen on 2020/9/29.
//  Copyright © 2020 caichen. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image : Image
    
    var body: some View {
        image
        .clipShape(Circle())
            .overlay(Circle().stroke(Color.white,lineWidth: 5))
        .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image:Image("turtlerock"))
    }
}
