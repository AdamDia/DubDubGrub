//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Adam Essam on 13/12/2022.
//

import SwiftUI

struct LocationListView: View {
    @ObservedObject private var viewModel = LocationListViewModel()
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.locationsArray) { locationItem in
                    NavigationLink(destination: LocationDetails()) {
                        VStack {
                            LocationListViewCell(location: locationItem)
                        }
                    }
                }
            }
            .navigationTitle("Grub Spots")
            .listStyle(.plain)
        }
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}
