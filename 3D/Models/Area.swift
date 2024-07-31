//
//  Area.swift
//  3D_CAD
//
//  Created by Hayri Olcay on 12/23/23.
//

import Foundation

enum Area : String, Identifiable, CaseIterable, Equatable 
{
    // app areas we will use for navigation purposes
    case astronauts, equipment, mission
    var id: Self { self }
    var name: String { rawValue.capitalized }
    
    var title: String {
        switch self {
            case .astronauts:
                "Instruction Set"
            case .equipment:
                "3D_CAD mission equipment..."
            case .mission:
                "3D_CAD mission trailer..."
        }
    }
}
