//
//  RadioCollections.swift
//  AppleMusic-SwiftUI
//
//  Created by Алексей Кудинов on 12.09.2022.
//

import SwiftUI

struct RadioCollections: View {
    
    var rows = [GridItem(.flexible())]
    @State var radioCollectionItems: [RadioCollectionsModel] = RadioCollectionCatalogue.items

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows, content: {
                ForEach(radioCollectionItems, id: \.self) { item in
                    VStack(alignment: .leading) {
                        Text(item.title)
                            .font(.callout)
                            .foregroundColor(.secondary)
                        Text(item.subtitle)
                            .font(.headline)
                        Text(item.description)
                            .font(.callout)
                            .foregroundColor(.secondary)
                        Image(item.image)
                            .resizable()
                            .frame(width: 360,
                                   height: 250)
                            .cornerRadius(10)
                    }
                }
            })
            .padding(.leading, 10)
        }
    }
}

struct RadioCollections_Previews: PreviewProvider {
    static var previews: some View {
        RadioCollections()
    }
}
