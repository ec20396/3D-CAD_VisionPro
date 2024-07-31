//
//  ViewModel.swift
//  3D_CAD
//
//  Created by Hayri Olcay on 12/23/23.
//

import Foundation

@Observable
class ViewModel
{
    var navigationPath : [Area] = []
    var isShowingRocketCapsule : Bool = false
    var isShowingFullRocket : Bool = false
    var isShowingMixedRocket : Bool = false
    var isShowingWall_socket: Bool = false
    var isShowingSphere: Bool = false
    
    var capsuleRealityAreaId: String = "CapsuleRealityArea"
    var fullRocketRealityArea: String = "FullRocketRealityArea"
    var mixedRocketRealityArea: String = "MixedRocketRealityArea"
    var SphereRealityArea: String = "SphereRealityArea"
}
