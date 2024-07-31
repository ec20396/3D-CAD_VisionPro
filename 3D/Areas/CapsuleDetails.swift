//
//  CapsuleDetails.swift
//  3D_CAD
//
//  Created by Hayri Olcay on 12/29/23.
//

import SwiftUI

struct CapsuleDetails: View {
    @State private var orbitOn = false
    @State private var lightOn = true
    @State private var isShowing = false
    
    let turnOnLight: () -> Void
    let turnOffLight: ()  -> Void
    let turnOnOrbit: () -> Void
    let turnOffOrbit: ()  -> Void
    
    var body: some View {
        VStack {
            Button {
                isShowing.toggle()
            } label: {
                Label("Rocket Options", systemImage: "gear")
            }
            .controlSize(.mini)
            .font(.system(size: 10))
        }
        if isShowing {
            VStack {
                Text("Toggle On/Off")
                    .font(.system(size: 8))
                
                HStack(alignment:.top) {
                    VStack(alignment:.leading) {
                        Toggle(isOn: $lightOn){
                            Text("Colour \(!lightOn ? "Dark" : "Light")")
                                .font(.system(size: 8, weight:. bold))
                                .onChange(of: lightOn, {
                                    if lightOn {
                                        turnOnLight()
                                    }
                                    else
                                    {
                                        turnOffLight()
                                    }
                                })
                        }
                    }
                    
                    VStack(alignment:.leading) {
                        Toggle(isOn: $orbitOn){
                            Text("rotate \(!orbitOn ? "Off" : "On")")
                                .font(.system(size: 8, weight:. bold))
                                .onChange(of: orbitOn, {
                                    if orbitOn {
                                        turnOnOrbit()
                                    }
                                    else
                                    {
                                        turnOffOrbit()
                                    }
                                })
                        }
                    }
                }
            }
            .padding(EdgeInsets(top: 5, leading: 25, bottom: 0, trailing: 25))
            .frame(width: 300, height: 120)
            .glassBackgroundEffect()
        }
    }
}
