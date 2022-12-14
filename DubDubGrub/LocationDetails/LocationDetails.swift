//
//  LocationDetails.swift
//  DubDubGrub
//
//  Created by Adam Essam on 13/12/2022.
//

import SwiftUI

struct LocationDetails: View {
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    var body: some View {
        
        VStack(spacing: 16) {
            Image("default-banner-asset")
                .resizable()
                .scaledToFill()
                .frame(height: 120)
            
            HStack{
                Label("1 S Market St Ste 40", systemImage: "mappin.and.ellipse")
                    .font(.caption)
                    .foregroundColor(.secondary)
                Spacer()
            }
            .padding(.horizontal)
            
            Text("Description about the place. Description about the place Description about the place")
                .lineLimit(3)
                .minimumScaleFactor(0.75)
                .padding(.horizontal)
                .frame(height: 70)
            
            ZStack {
                Capsule()
                    .frame(height: 80)
                    .foregroundColor(Color(.secondarySystemGroupedBackground))
                    .opacity(0.2)
                    .cornerRadius(20)
                
                HStack(spacing: 20){
                    Button {
                        
                    } label: {
                        LocationActionButton(color: Color.brandPrimary, imageName: "location.fill")
                    }
                    
                    Link(destination: URL(string: "https://www.apple.com")!) {
                        LocationActionButton(color: Color.brandPrimary, imageName: "network")
                    }
                    
                    Button {
                        
                    } label: {
                        LocationActionButton(color: Color.brandPrimary, imageName: "phone.fill")
                    }
                    
                    Button {
                        
                    } label: {
                        LocationActionButton(color: Color.brandPrimary, imageName: "person.fill.checkmark")
                    }
                    
                    
                }
            }
            .padding(.horizontal)
            
            Text("Who's Here ?")
                .bold()
                .font(.title2)
            
            ScrollView{
                LazyVGrid(columns: columns) {
                    ForEach(0..<10) { item in
                        LocationDetailsCell(person: people(imageName: "default-avatar", personName: "Adam"))
                    }
                }
            }
            Spacer()
        }
        .navigationTitle("Location Name")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}
struct LocationDetails_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView { 
            LocationDetails()
        }
    }
}

struct LocationActionButton: View {
    var color: Color
    var imageName: String
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 60, height: 60)
                .foregroundColor(color)
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundColor(.white)
                .frame(width: 22, height: 22)
        }
    }
}
