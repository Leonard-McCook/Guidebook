//
//  ContentView.swift
//  Guidebook
//
//  Created by Leonard McCook-Carr on 6/10/23.
//

import SwiftUI

struct CityView: View {
    
    @State var cities = [City]()
    var dataService = DataService()
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView (showsIndicators: false) {
                VStack {
                    
                    ForEach(cities) { city in
                        
                        NavigationLink {
                            AttractionView(city: city)
                        } label: {
                            CityCard(city: city)
                                .padding(.bottom, 20)
                        }
                    }
                    
                }
            }
            .padding(.horizontal)
            
        }
        .ignoresSafeArea()
        .onAppear {
            cities = dataService.getFileData()
        }
        
    }
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        CityView()
    }
}
