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
            
            ScrollView {
                VStack {
                    
                    ForEach(cities) { city in
                        
                        NavigationLink {
                            AttractionView(city: city)
                        } label: {
                            Text(city.name)
                        }
                    }
                    
                }
            }
            .padding()
            
        }
        .onAppear {
            cities = dataService.getData()
        }
        
    }
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        CityView()
    }
}
