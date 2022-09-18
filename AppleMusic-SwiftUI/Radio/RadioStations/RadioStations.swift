//
//  RadioStations.swift
//  AppleMusic-SwiftUI
//
//  Created by Алексей Кудинов on 12.09.2022.
//

import SwiftUI

struct RadioStations: View {
    var column = [GridItem(.flexible())]
    @State var radioStationsItems: [RadioStationsModel] = radioStationCatalogue.items

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: column, alignment: .leading, content: {
                ForEach(radioStationsItems, id: \.self) { item in
                    HStack(alignment: .center) {
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .cornerRadius(10)
                        VStack(alignment: .leading) {
                            Text(item.title)
                                .font(.headline)
                                .multilineTextAlignment(.leading)
                            Text(item.subtitle)
                                .font(.callout)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.secondary)
                        }
                    }
                    Divider()
                }
            })
            .padding(.leading, 15)
            .padding(.bottom, 90)
        }
    }
}

struct RadioStations_Previews: PreviewProvider {
    static var previews: some View {
        RadioStations()
    }
}
