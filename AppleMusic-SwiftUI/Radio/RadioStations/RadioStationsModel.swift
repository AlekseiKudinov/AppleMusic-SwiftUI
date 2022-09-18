//
//  RadioStationsModel.swift
//  AppleMusic-SwiftUI
//
//  Created by Алексей Кудинов on 12.09.2022.
//

import SwiftUI

struct RadioStationsModel: Hashable {
    let image: String
    let title: String
    let subtitle: String
}

struct radioStationCatalogue {
    static let items = [
        RadioStationsModel(image: "firstStation",
                           title: "Хип-Хоп",
                           subtitle: "Идеальные биты и ритмы"),
        RadioStationsModel(image: "secondStation",
                           title: "Классика электронной музыки",
                           subtitle: "Как рождался саунд будущего"),
        RadioStationsModel(image: "thirdStation",
                           title: "Классика рока",
                           subtitle: "Гении гитарного звука"),
        RadioStationsModel(image: "fourthStation",
                           title: "Классика",
                           subtitle: "Выдающиеся образцы жанра"),
        RadioStationsModel(image: "fifthStation",
                           title:
                            "Музыка для расслабления",
                           subtitle: "Электронная медитация"),
        RadioStationsModel(image: "sixthStation",
                           title: "Популярное",
                           subtitle: "То, что слушают прямо сейчас")
    ]
}
