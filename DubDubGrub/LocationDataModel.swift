//
//  LocationDataModel.swift
//  DubDubGrub
//
//  Created by Adam Essam on 13/12/2022.
//

import Foundation

struct LocationListDataModel: Identifiable {
    var id = UUID()
    let imageName: String
    let locationName: String
    let peopleExists: [people]
}

struct people: Identifiable {
    var id = UUID()
    let imageName: String
    let personName: String
}
