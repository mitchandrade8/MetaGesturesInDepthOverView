//
//  SequencedInDepthExample.swift
//  MetaGesturesInDepthOverView
//
//  Created by Mitch Andrade on 8/31/23.
//

import SwiftUI

struct SequencedInDepthExample: View {
    
    @State private var message = "You can long press and then drag"
    
    var body: some View {
        let longPress = LongPressGesture()
            .onEnded { _ in
                print("Long press detected. Now you can drag me")
            }
        
        let drag = DragGesture()
            .onChanged { _ in
                print("Dragging...")
            }
        
        let sequence = longPress.sequenced(before: drag)
        
        Image(systemName: "person.cricle")
            .gesture(sequence)
    }
}

struct SequencedInDepthExample_Previews: PreviewProvider {
    static var previews: some View {
        SequencedInDepthExample()
    }
}
