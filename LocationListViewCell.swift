//
//  LocationListViewCell.swift
//  DubDubGrub
//
//  Created by Adam Essam on 13/12/2022.
//

import SwiftUI

struct LocationListViewCell: View {
    let location: LocationListDataModel
    
    var body: some View {
        HStack {
            Image(location.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding(.vertical, 8)
            VStack(alignment: .leading) {
                Text(location.locationName)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.75)
                
                HStack {
                    AvatarView()
                    AvatarView()
                    AvatarView()
                    AvatarView()
                }
            }
            .padding(.leading)
        }
    }
}

struct LocationListViewCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationListViewCell(location: LocationListDataModel(imageName: "default-square-asset", locationName: "Default Name", peopleExists: [people(imageName: "default-avatar")]))
    }
}


struct LocationListDataModel: Identifiable {
    var id = UUID()
    let imageName: String
    let locationName: String
    let peopleExists: [people]
}

struct people {
    var imageName: String
}

struct AvatarView: View {
    var body: some View {
        Image("default-avatar")
            .resizable()
            .scaledToFit()
            .frame(width: 30, height: 30)
            .clipShape(Circle())
    }
}
