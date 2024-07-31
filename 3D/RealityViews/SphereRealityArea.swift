//
//  SphereRealityArea.swift
//  3D_CAD
//
//  Created by Hayri Olcay on 29/04/2024.
//

import SwiftUI
import RealityKit
import RealityKitContent
struct SphereRealityArea: View {
    var body: some View {
        RealityView{ content in
            guard let entity = try? await Entity(named: "sphere", in: realityKitContentBundle) else{
                fatalError("could not load")
            }
            content.add(entity)
        }
    }
}

#Preview {
    SphereRealityArea()
}
