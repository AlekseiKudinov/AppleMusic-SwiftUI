//
//  Blur.swift
//  AppleMusic-SwiftUI
//
//  Created by Алексей Кудинов on 10.10.2022.
//

import SwiftUI

struct BlurEffect: UIViewRepresentable {
    var style: UIBlurEffect.Style = .systemMaterial

    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}

