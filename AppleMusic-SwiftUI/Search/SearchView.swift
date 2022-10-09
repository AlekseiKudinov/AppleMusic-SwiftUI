//
//  SearchView.swift
//  AppleMusic-SwiftUI
//
//  Created by Алексей Кудинов on 04.10.2022.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    Divider()
                    Text("Поиск по категориям")
                        .font(.system(size: 20, weight: .medium))
                        .frame(alignment: .leading)
                        .padding(.leading, 15)
                    CategoriesView()
                }
            }
            .navigationTitle("Поиск")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
