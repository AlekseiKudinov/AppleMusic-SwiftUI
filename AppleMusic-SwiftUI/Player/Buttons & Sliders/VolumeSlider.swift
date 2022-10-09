//
//  VolumeSlider.swift
//  AppleMusic-SwiftUI
//
//  Created by Алексей Кудинов on 10.10.2022.
//

import SwiftUI

struct VolumeView: View {

    @State var sliderValue: Double = 5

    var body: some View {
        HStack {
            Image(systemName: "speaker.fill")
                .foregroundColor(.gray)
                .padding(.leading, 40)
            Slider(value: $sliderValue)
                .accentColor(.gray)
            Image(systemName: "speaker.wave.3.fill")
                .foregroundColor(.gray)
                .padding(.trailing, 30)
        }
    }
}

