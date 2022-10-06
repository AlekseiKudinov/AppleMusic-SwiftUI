//
//  CategoriesModel.swift
//  AppleMusic-SwiftUI
//
//  Created by Алексей Кудинов on 04.10.2022.
//

import SwiftUI

struct CategoryModel: Hashable {
    var id = UUID()
    var title: String?
    var subtitle: String?
    var imageName: String?
}

class AllCategoriesObservable: ObservableObject {

    @Published var allCategories: [CategoryModel] =
    [CategoryModel(title: "Пространственное аудио", subtitle: "Категория", imageName: "Audio"),
     CategoryModel(title: "Романтика", subtitle: "Категория", imageName: "Romantic"),
     CategoryModel(title: "Поп на русском", subtitle: "Категория", imageName: "Russian Pop"),
     CategoryModel(title: "Хип-хоп на русском", subtitle: "Категория", imageName: "Russian Hip-hop"),
     CategoryModel(title: "Поп", subtitle: "Категория", imageName: "US Pop"),
     CategoryModel(title: "Хиты", subtitle: "Категория", imageName: "US Hits"),
     CategoryModel(title: "Хорошее настроение", subtitle: "Категория", imageName: "Good mood"),
     CategoryModel(title: "Хиты на русском", subtitle: "Категория", imageName: "Russian Hits"),

    ]
}

