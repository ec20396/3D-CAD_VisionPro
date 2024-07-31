//
//  CrewArea.swift
//  3D_CAD
//
//  Created by Hayri Olcay on 12/23/23.
//

import SwiftUI

struct InstructionArea: View {
    var body: some View {
        HStack {
            ForEach(Instructions.allCases) { Instructions in
                VStack(alignment: .leading) {
                    Image("Instructions-\(Instructions.name)")
                        .resizable()
                        .frame(width: 300, height: 240)
                    Text(Instructions.fullName)
                        .font(.system(size: 22, weight: .bold))
                    Text(Instructions.about)
                        .font(.system(size: 20))
                }
                .frame(minWidth: 180, minHeight: 200)
                .padding(20)
                .glassBackgroundEffect()
            }
        }
        .padding(20)
    }
}

#Preview {
    CrewArea()
}
