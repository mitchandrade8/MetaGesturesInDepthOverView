//
//  OTGInDepthExample.swift
//  MetaGesturesInDepthOverView
//
//  Created by Mitch Andrade on 8/30/23.
//

import SwiftUI

struct OTGInDepthExample: View {
    var body: some View {
        Text("Little Lemon Restaurant.")
            .font(.largeTitle)
            .bold()
            .onTapGesture(count: 2) {
                print("Text Tapped!")
            }
    }
}

struct OTGInDepthExample_Previews: PreviewProvider {
    static var previews: some View {
        OTGInDepthExample()
    }
}
