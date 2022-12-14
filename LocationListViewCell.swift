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
                    .font(.title3)
                    .fontWeight(.semibold)
//                    .lineLimit(1)
//                    .minimumScaleFactor(0.75)
                    .fixedSize()  ///check for solution the font is wrapping before it crosses the limit so I made it fixed 
                    
                    
                
                HStack {
                    AvatarView(size: 35, imageName: "default-avatar")
                    AvatarView(size: 35, imageName: "default-avatar")
                    AvatarView(size: 35, imageName: "default-avatar")
                    AvatarView(size: 35, imageName: "default-avatar")
                    AvatarView(size: 35, imageName: "default-avatar")
                }
            }
            .padding(.leading)
        }
    }
}

struct LocationListViewCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationListViewCell(location: LocationListDataModel(imageName: "default-square-asset", locationName: "Default Name", peopleExists: [people(imageName: "default-avatar", personName: "Adam")]))
    }
}

struct AvatarView: View {
    var size: CGFloat
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .frame(width: size, height: size)
            .clipShape(Circle())
    }
}
