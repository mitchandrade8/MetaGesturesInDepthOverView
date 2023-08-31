//
//  MagnificationGesture.swift
//  MetaGesturesInDepthOverView
//
//  Created by Mitch Andrade on 8/31/23.
//

import SwiftUI

struct MagnificationGesture: View {
    
    @State private var amount = 0.0
    @State private var finalAmount = 1.0
    
    var body: some View {
        Image(systemName: "person.circle")
            .font(.largeTitle)
            .scaleEffect(finalAmount + amount)
//            .gesture(
//                MagnificationGesture()
//                    .onTapGesture { value in
//                        amount = value - 1
//                    }
//                    .onEnded { value in
//                        finalAmount += amount
//                        amount = 0
//                    }
//            )
    }
}

struct MagnificationGesture_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGesture()
    }
}
