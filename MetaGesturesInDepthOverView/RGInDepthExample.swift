//
//  RGInDepthExample.swift
//  MetaGesturesInDepthOverView
//
//  Created by Mitch Andrade on 8/31/23.
//

import SwiftUI

struct RGInDepthExample: View {
    
    @State private var amount = Angle.zero
    @State private var finalAmount = Angle.zero
    
    var body: some View {
        Image(systemName: "person.circle")
            .font(.largeTitle)
            .rotationEffect(amount + finalAmount)
            .gesture(
                RotationGesture()
                    .onChanged { value in
                        amount = value
                    }
                    .onEnded { value in
                        finalAmount += amount
                        amount = .zero
                    }
            )
    }
}

struct RGInDepthExample_Previews: PreviewProvider {
    static var previews: some View {
        RGInDepthExample()
    }
}
