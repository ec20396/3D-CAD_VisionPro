//
//  NavigationToAreas.swift
//  3D_CAD
//
//  Created by Hayri Olcay on 12/23/23.
//

import SwiftUI

struct NavigationToAreas: View {
    var body: some View {
        VStack {
            Text("Welcome To 3D_CAD Mission By SpaceX")
                .monospaced()
                .font(.system(size: 40, weight: .bold))
                .padding(.top, 250)
            
            HStack(spacing: 25) {
                ForEach(Area.allCases) { area in
                    NavigationLink {
                        // navigation link destination area
                        
                        // header area
                        Text(area.title)
                            .monospaced()
                            .font(.system(size: 40, weight: .bold))
                        
                        // sub-views go here
                        if area == Area.astronauts {
                            CrewArea()
                        }
                        else if area == Area.equipment {
                            EquipmentArea()
                        }
                        else if area == Area.mission {
                            MissionArea()
                        }
                        
                        Spacer()
                    } label: {
                        Label(area.name, systemImage: "chevron.right")
                            .monospaced()
                            .font(.title)
                    }
                    .controlSize(.extraLarge)
                }
            }
        }
        .background()
        {
            Image("3D_CAD")
        }
    }
}

#Preview {
    NavigationToAreas()
        .environment(ViewModel())
}
