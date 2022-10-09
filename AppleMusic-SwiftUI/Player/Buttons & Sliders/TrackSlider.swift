//
//  TrackSlider.swift
//  AppleMusic-SwiftUI
//
//  Created by Алексей Кудинов on 10.10.2022.
//

import SwiftUI

struct MusicDurationView: View {

    @State var sliderValue: Double = 5

    var body: some View {
        Slider(value: $sliderValue)
            .accentColor(.gray)
            .padding(25)
    }
}

