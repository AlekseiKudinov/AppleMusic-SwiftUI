//
//  Cell.swift
//  AppleMusic-SwiftUI
//
//  Created by Алексей Кудинов on 11.09.2022.
//

import SwiftUI

struct Row: Identifiable, Equatable {
    let image: String
    let title: String
    var isOn: Bool
    let id = UUID()
}

struct libraryCatalogue {
    static let items = [
        Row(image: "music.note.list",
            title: "Плейлисты",
            isOn: false),
        Row(image: "music.mic",
            title: "Артисты",
            isOn: false),
        Row(image: "square.stack",
            title: "Альбомы",
            isOn: false),
        Row(image: "music.note",
            title: "Песни",
            isOn: false),
        Row(image: "tv",
            title: "Телешоу и фильмы",
            isOn: false),
        Row(image: "music.note.tv",
            title: "Видеоклипы",
            isOn: false),
        Row(image: "guitars",
            title: "Жанры",
            isOn: false),
        Row(image: "person.2.crop.square.stack",
            title: "Сборники",
            isOn: false),
        Row(image: "music.quarternote.3",
            title: "Авторы",
            isOn: false),
        Row(image: "arrow.down.circle",
            title: "Загружено",
            isOn: false)
    ]
}
