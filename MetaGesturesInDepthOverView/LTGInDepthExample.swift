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
            .onLongPressGesture {
                print("Text Tapped!")
            }
    }
}

struct LTGInDepthExample_Previews: PreviewProvider {
    static var previews: some View {
        LTGInDepthExample()
    }
}
