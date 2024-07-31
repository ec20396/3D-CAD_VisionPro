//
//  MissionArea.swift
//  3D_CAD
//
//  Created by Hayri Olcay on 12/23/23.
//

import SwiftUI
import AVKit

struct MissionArea: View {
    @State var player = AVPlayer(url: Bundle.main.url(forResource: "3D_CAD", withExtension: "mp4")!)
    
    @State var isPlaying: Bool = false
    
    var body: some View {
        VStack {
           VideoPlayer(player: player)
           Button {
               isPlaying ? player.pause() : player.play()
               isPlaying.toggle()
               player.seek(to: .zero)
           } label: {
               Image(systemName: isPlaying ? "stop" : "play")
                   .padding()
           }
           .padding(10)
        }
        .glassBackgroundEffect()
        .onAppear(perform: {
            isPlaying = false
        })
        .onDisappear(perform: {
            player.pause()
        })
    }
}

#Preview {
    MissionArea()
}
