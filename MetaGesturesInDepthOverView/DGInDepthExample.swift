//
//  DGInDepthExample.swift
//  MetaGesturesInDepthOverView
//
//  Created by Mitch Andrade on 8/30/23.
//

import SwiftUI

struct DGInDepthExample: View {
    @State private var offsetValue = CGSize.zero
    
    var body: some View {
        Image(systemName: "person.fill")
            .offset(offsetValue)
            .gesture(
                DragGesture()
                    .onChanged { gesture in
                        offsetValue = gesture.translation
                    }
            )
    }
}

struct DGInDepthExample_Previews: PreviewProvider {
    static var previews: some View {
        DGInDepthExample()
    }
}
