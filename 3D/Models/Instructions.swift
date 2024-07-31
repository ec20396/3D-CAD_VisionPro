//
//  Instructions.swift
//  3D_CAD
//
//  Created by Hayri Olcay on 12/23/23.
//

import Foundation

enum Instructions : String, Identifiable, CaseIterable, Equatable 
{
    case jared, haley, chris, sian
    var id: Self { self }
    var name: String { rawValue }
    
    var fullName: String {
        switch self {
        case .jared:
            "Choosing and Manipulating an Object:"
        case .haley:
            "Interacting with Objects through Gestures:"
        case .chris:
            "Scanning a QR Code for Missions:"
        case .sian:
            "Activating Focus Mode:"
        }
    }
    
    var about: String {
        switch self {
        case .jared:
            "When you launch the VisionPro app, you will be presented with a library of objects. You can select any object by tapping on it. Once selected, you can easily drag the object across the screen by pinching and moving your fingers. This feature allows you to position the object in relation to other models in the workspace, facilitating precise placement and integration within complex assemblies."
        case .haley:
            "To interact with a selected model, pinch on a dedicated action button displayed on the interface. This gesture activates a menu where you can choose specific actions for the model, such as rotating it or changing its color. The pinch gesture is intuitive, mimicking real-world manipulation, which enhances the user's engagement and control over the model adjustments."
        case .chris:
            "Scanning a QR Code for Missions: VisionPro incorporates gamification elements to enhance learning and engagement. You can scan a QR code within the app to receive a mission brief. Each mission is designed to challenge your understanding and skills by prompting you to perform specific tasks with the models, such as assembling parts or applying specific modifications. This gamified approach helps maintain user interest and promotes a deeper interaction with the content."
        case .sian:
            "The app includes a focus mode that can be activated with the click of a button. This mode minimizes distractions by simplifying the user interface and highlighting the task at hand. It's particularly useful during complex tasks or missions where concentration is crucial. Focus mode can be toggled on and off as needed, providing flexibility in how you interact with the app during different phases of use."
        }
    }
}
