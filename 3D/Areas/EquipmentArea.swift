//
//  EquipmentArea.swift
//  3D_CAD
//
//  Created by Hayri Olcay on 12/23/23.
//

import SwiftUI

struct EquipmentArea: View {
    @Environment(ViewModel.self) private var model
    @Environment(\.openWindow) private var openWindow
    @Environment(\.dismissWindow) private var dismissWindow
    @Environment(\.openImmersiveSpace) private var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) private var dismissImmersiveSpace
    
    var body: some View {
        @Bindable var model = model
        
        
        HStack{
            VStack{
                Image("sphere")
                    .resizable()
                    .frame(width: 300, height:300)
                    .padding(20)
                
                Toggle(model.isShowingSphere ? "hide Sphere" : "show Sphere", isOn: $model.isShowingSphere)
                    .onChange(of: model.isShowingSphere) { _, isShowing in
                    if isShowing{
                        //
                    }
                    else{
                        //
                    }
                }
                .toggleStyle(.button)
                .padding(25)
            }
        }
        .glassBackgroundEffect()

        
        HStack {
            EquipmentCard(isShowing: $model.isShowingFullRocket, toggleTitle: "focus mode", imageName: "equipment-fullrocket") {
                await openImmersiveSpace(id: model.fullRocketRealityArea)
            } dismissCard: {
                await dismissImmersiveSpace()
            }
            
            EquipmentCard(isShowing: $model.isShowingRocketCapsule, toggleTitle: "rocket", imageName: "rocket") {
                openWindow(id: model.capsuleRealityAreaId)
            } dismissCard: {
                dismissWindow(id: model.capsuleRealityAreaId)
            }
            
            
            
          //  EquipmentCard(isShowing: $model.isShowingSphere, toggleTitle: "sphere", imageName: "sphere") {
          //      openWindow(id: model.capsuleRealityAreaId)
          //  } dismissCard: {
          //      dismissWindow(id: model.capsuleRealityAreaId)
         //   }
            
            
           
            
            
            
            EquipmentCard(isShowing: $model.isShowingRocketCapsule, toggleTitle: "cube", imageName: "cube") {
                openWindow(id: model.capsuleRealityAreaId)
            } dismissCard: {
                dismissWindow(id: model.capsuleRealityAreaId)
            }
            EquipmentCard(isShowing: $model.isShowingMixedRocket, toggleTitle: "Workbench", imageName: "workbench") {
                await openImmersiveSpace(id: model.mixedRocketRealityArea)
            } dismissCard: {
                await dismissImmersiveSpace()
            }
        }
        HStack {
            EquipmentCard(isShowing: $model.isShowingRocketCapsule, toggleTitle: "triangle", imageName: "triangle") {
            openWindow(id: model.capsuleRealityAreaId)
        } dismissCard: {
            dismissWindow(id: model.capsuleRealityAreaId)
        }
            EquipmentCard(isShowing: $model.isShowingRocketCapsule, toggleTitle: "socket", imageName: "socket") {
            openWindow(id: model.capsuleRealityAreaId)
        } dismissCard: {
            dismissWindow(id: model.capsuleRealityAreaId)
        }
            EquipmentCard(isShowing: $model.isShowingRocketCapsule, toggleTitle: "wall", imageName: "wall") {
            openWindow(id: model.capsuleRealityAreaId)
        } dismissCard: {
            dismissWindow(id: model.capsuleRealityAreaId)
        }
            EquipmentCard(isShowing: $model.isShowingRocketCapsule, toggleTitle: "shelf", imageName: "shelf") {
            openWindow(id: model.capsuleRealityAreaId)
        } dismissCard: {
            dismissWindow(id: model.capsuleRealityAreaId)
        }
            EquipmentCard(isShowing: $model.isShowingRocketCapsule, toggleTitle: "wardrobe", imageName: "wardrobe") {
            openWindow(id: model.capsuleRealityAreaId)
        } dismissCard: {
            dismissWindow(id: model.capsuleRealityAreaId)
        }
        }
        HStack {
            EquipmentCard(isShowing: $model.isShowingRocketCapsule, toggleTitle: "bed", imageName: "bed") {
            openWindow(id: model.capsuleRealityAreaId)
        } dismissCard: {
            dismissWindow(id: model.capsuleRealityAreaId)
        }
            EquipmentCard(isShowing: $model.isShowingRocketCapsule, toggleTitle: "sofa", imageName: "sofa") {
            openWindow(id: model.capsuleRealityAreaId)
        } dismissCard: {
            dismissWindow(id: model.capsuleRealityAreaId)
        }
            EquipmentCard(isShowing: $model.isShowingRocketCapsule, toggleTitle: "plane", imageName: "plane") {
            openWindow(id: model.capsuleRealityAreaId)
        } dismissCard: {
            dismissWindow(id: model.capsuleRealityAreaId)
        }
            EquipmentCard(isShowing: $model.isShowingRocketCapsule, toggleTitle: "cylinder", imageName: "cylinder") {
            openWindow(id: model.capsuleRealityAreaId)
        } dismissCard: {
            dismissWindow(id: model.capsuleRealityAreaId)
        }
            EquipmentCard(isShowing: $model.isShowingRocketCapsule, toggleTitle: "washing machine", imageName: "washing machine") {
            openWindow(id: model.capsuleRealityAreaId)
        } dismissCard: {
            dismissWindow(id: model.capsuleRealityAreaId)
        }
        }
    }
}

#Preview {
    EquipmentArea()
        .environment(ViewModel())
}
