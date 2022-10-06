//
//  CategoriesView.swift
//  AppleMusic-SwiftUI
//
//  Created by Алексей Кудинов on 04.10.2022.
//

import SwiftUI

struct CategoriesView: View {
    var column = [GridItem(.adaptive(minimum: 150))]

    @StateObject var categories: AllCategoriesObservable = AllCategoriesObservable()
    @State var searchCategory = ""

    var filteredCategories: [CategoryModel] {
        if searchCategory.isEmpty {
            return categories.allCategories
        } else {
            return categories.allCategories.filter { $0.title!.localizedCaseInsensitiveContains(searchCategory)}
        }
    }

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: column) {
                ForEach(filteredCategories, id: \.id) { category in
                    NavigationLink {
                        DetailCategoryGrid(category: category)
                            .navigationBarBackButtonHidden()
                    } label: {
                        VStack {
                            Image(category.imageName ?? "")
                                .resizable()
                                .frame(minWidth: 170, minHeight: 120)
                                .scaledToFit()
                                .cornerRadius(12)
                        }
                    }
                }
            }
            .searchable(text: $searchCategory, prompt: "Search category")
            .padding(15)
        }
    }
}

struct SearchCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}

