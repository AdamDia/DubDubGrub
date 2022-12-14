//
//  LocationDetailsCell.swift
//  DubDubGrub
//
//  Created by Adam Essam on 13/12/2022.
//

import SwiftUI

struct LocationDetailsCell: View {
    let person: people
    var body: some View {
        VStack {
            AvatarView(size: 64, imageName: person.imageName)
            Text(person.personName)
                .fontWeight(.bold)
                .lineLimit(1)
                .minimumScaleFactor(0.75)
        }
    }
}

struct LocationDetailsCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailsCell(person: people(imageName: "default-avatar", personName: "Adam"))
    }
}
