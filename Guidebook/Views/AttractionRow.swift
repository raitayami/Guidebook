//
//  AttractionRow.swift
//  Guidebook
//
//  Created by Tayami Rai on 09/01/2024.
//

import SwiftUI

struct AttractionRow: View {
    
    var attraction: Attraction
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20){
            
            Image(attraction.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 120)
                .cornerRadius(10)

            Text(attraction.name)
                .bold()
                .font(.largeTitle)
            
            Text(attraction.summary)
                .multilineTextAlignment(.leading)
             
        }
        
    }
}

#Preview {
    AttractionRow(attraction: Attraction(name: "Shinjuku Gyo-en",
                                         summary: "Shinjuku Gyo-en is a large park and garden in Shinjuku and Shibuya, Tokyo, Japan. It was originally a residence of the Naitō family in the Edo period.",
                                         longDescription: """
                      The garden, which is 58.3 hectares in area with a circumference of 3.5 km, blends three distinct styles: a French Formal and English Landscape in the north and to the south a Japanese traditional. A traditional Japanese tea house can be found within the gardens. The garden is a favourite hanami (cherry-blossom viewing) spot, and large crowds can be present during cherry blossom season.
                      
                      The garden has more than 20,000 trees, including approximately 1,500 cherry trees which bloom from late March (Shidare or Weeping Cherry) to early April (Somei or Tokyo Cherry), and on to late April (Kanzan Cherry). Other trees found here include the majestic Himalayan cedars, which soar above the rest of the trees in the park, tulip trees, cypresses, and plane trees, which were first planted in Japan in the Imperial Gardens.
                      
                      Horticulture work has been happening in the garden greenhouses since 1892. The present greenhouse, built in the 1950s has a stock of over 1,700 tropical and subtropical plant species on permanent display.
                      """,
                                         imageName: "shinjukugyoen", latLong: "35.68512626065214, 139.71080566797045"))
}
