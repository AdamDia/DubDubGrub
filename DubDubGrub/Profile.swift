//
//  Profile.swift
//  DubDubGrub
//
//  Created by Adam Essam on 13/12/2022.
//

import SwiftUI

struct Profile: View {
    
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var companyName: String = ""
    @State private var textBio: String = ""
  
    
    var body: some View {
        VStack {
            ZStack {
                Color(.secondarySystemBackground)
                    .frame(height: 130)
                    .cornerRadius(12)
                    .padding(.horizontal)
       
               
                HStack(spacing: 16) {
                    ZStack{
                        AvatarView(size: 84, imageName: "default-avatar")
                        Image(systemName: "square.and.pencil")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 14, height: 14)
                            .foregroundColor(.white)
                            .offset(y: 30.0)
                    }
                    .padding(.leading, 12)
                    
                    VStack(spacing: 1) {
                        TextField("First Name", text: $firstName)
                            .font(.system(size: 32, weight: .bold))
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                        
                        TextField("Last Name", text: $lastName)
                            .font(.system(size: 32, weight: .bold))
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                        
                        
                        TextField("Company title", text: $companyName)
                    }
                    .padding(.trailing, 16)
                }
                .padding()
            }
            
            
            VStack {
                HStack {
                    Text("Bio: ")
                        .font(.callout)
                        .foregroundColor(Color.secondary)
                    +
                    
                    Text("\(100 - textBio.count)")
                        .bold()
                        .font(.callout)
                        .foregroundColor(textBio.count <= 100 ? .brandPrimary : .pink)
                    +
                    
                    Text(" Characters remain")
                        .font(.callout)
                        .foregroundColor(Color.secondary)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Label("Check Out", systemImage: "mappin.and.ellipse")
                            .font(.callout)
                            .fontWeight(.semibold)
                            .frame(width: 120, height: 30)
                            .background(Color.pink)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                }
                .padding(.horizontal)
                
                TextEditor(text: $textBio)
                    .frame(height: 100)
                    .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(.secondary, lineWidth: 1))
            }
            
            Spacer()
            
            Button {
                ///action
            } label: {
                Text("Save profile")
                    .bold()
                    .frame(width: 250, height: 50)
                    .font(.title3)
                    .background(Color.brandPrimary)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding()
            }
        }
        .navigationTitle("Profile")
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            Profile()
        }
    }
}
