//
//  Cell.swift
//  AppleMusic-SwiftUI
//
//  Created by Алексей Кудинов on 11.09.2022.
//

import SwiftUI

struct Cell: Identifiable, Equatable {
    let image: String
    let title: String
    var isOn: Bool
    let id = UUID()
}

struct Catalogue {
    static let items = [
        Cell(image: "music.note.list", title: "Плейлисты", isOn: false),
        Cell(image: "music.mic", title: "Артисты", isOn: false),
        Cell(image: "square.stack", title: "Альбомы", isOn: false),
        Cell(image: "music.note", title: "Песни", isOn: false),
        Cell(image: "tv", title: "Телешоу и фильмы", isOn: false),
        Cell(image: "music.note.tv", title: "Видеоклипы", isOn: false),
        Cell(image: "guitars", title: "Жанры", isOn: false),
        Cell(image: "person.2.crop.square.stack", title: "Сборники", isOn: false),
        Cell(image: "music.quarternote.3", title: "Авторы", isOn: false),
        Cell(image: "arrow.down.circle", title: "Загружено", isOn: false)
    ]
}
