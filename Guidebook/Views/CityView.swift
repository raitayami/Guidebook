//
//  ContentView.swift
//  Guidebook
//
//  Created by Tayami Rai on 08/01/2024.
//

import SwiftUI

struct CityView: View {
    
    @State var cities = [City]()
    var dataService = DataService()
    
    var body: some View {
        
        
        NavigationStack{
            ScrollView {
                VStack {
                    ForEach(cities){ city in
                        
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
            .scrollIndicators(.hidden)
        }
        .ignoresSafeArea()
        .onAppear(perform: {
            cities = dataService.getFileData()
        })
    }
}

#Preview {
    CityView()
}
