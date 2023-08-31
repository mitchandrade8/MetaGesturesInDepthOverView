//
//  LTGInDepthExample.swift
//  MetaGesturesInDepthOverView
//
//  Created by Mitch Andrade on 8/30/23.
//

import SwiftUI

struct LTGInDepthExample: View {
    var body: some View {
        Text("Little Lemon Restaurant")
            .font(.largeTitle)
            .bold()
            .onLongPressGesture(minimumDuration: 4, maximumDistance: 15, perform: {
                print("Text Tapped!")
            },
            onPressingChanged: { state in
                print(state)
            })
    }
}

struct LTGInDepthExample_Previews: PreviewProvider {
    static var previews: some View {
        LTGInDepthExample()
    }
}
