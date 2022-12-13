//
//  LocationListViewModel.swift
//  DubDubGrub
//
//  Created by Adam Essam on 13/12/2022.
//

import SwiftUI

final class LocationListViewModel: ObservableObject {
    
    let locationsArray = [
        LocationListDataModel(imageName: "default-square-asset", locationName: "Default Name", peopleExists: [people(imageName: "default-avatar")]),
        LocationListDataModel(imageName: "default-square-asset", locationName: "Default Name", peopleExists: [people(imageName: "default-avatar")]),
        LocationListDataModel(imageName: "default-square-asset", locationName: "Default Name", peopleExists: [people(imageName: "default-avatar")]),
        LocationListDataModel(imageName: "default-square-asset", locationName: "Default Name", peopleExists: [people(imageName: "default-avatar")])
    ]
    
    
}
