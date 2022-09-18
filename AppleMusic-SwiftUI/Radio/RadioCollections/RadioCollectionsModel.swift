//
//  RadioCollectionsModel.swift
//  AppleMusic-SwiftUI
//
//  Created by Алексей Кудинов on 12.09.2022.
//

import SwiftUI

struct RadioCollectionsModel: Hashable {
    let image: String
    let title: String
    let subtitle: String
    let description: String
}

struct RadioCollectionCatalogue {
    static let items = [
        RadioCollectionsModel(image: "firstCollection",
                              title: "Эксклюзив",
                              subtitle: "Коллекция радиошоу Beats 1",
                              description: "Популярное"),
        RadioCollectionsModel(image: "secondCollection",
                              title: "Новый выпуск",
                              subtitle: "Музыкальный базар с Бастой",
                              description: "Новое шоу"),
        RadioCollectionsModel(image: "thirdCollection",
                              title: "Избранная радиостанция",
                              subtitle: "Поп-музыка для тренировок",
                              description: "Вперед и с музыкой!"),
        RadioCollectionsModel(image: "fourthCollection",
                              title: "Избранная радиостанция",
                              subtitle: "Только поп-музыка",
                              description: "Все топ-хиты")
    ]
}
