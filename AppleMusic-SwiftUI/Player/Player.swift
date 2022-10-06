//
//  Player.swift
//  AppleMusic-SwiftUI
//
//  Created by Алексей Кудинов on 12.09.2022.
//

import SwiftUI

struct Player: View {
    @State var isShowed: Bool

    var body: some View {
        HStack {
            Image("cover")
                .resizable()
                .frame(width: 50, height: 50, alignment: .bottomLeading)
                .cornerRadius(10)
                .shadow(radius: 20)
                .padding(10)

            Text("Mr. Morale")
                .font(.title2)
                .padding(.leading, 10)

            Spacer()

            Button {
                print("play button is tapped")
            } label: {
                Image(systemName: "play.fill")
                    .font(.system(size: 25))
                    .foregroundColor(.black)
                    .buttonStyle(.plain)
            }
            Button {
                print("next button is tapped")
            } label: {
                Image(systemName: "forward.fill")
                    .font(.system(size: 25))
                    .foregroundColor(.black)
                    .buttonStyle(.plain)
                    .padding(.trailing, 10)
            }
        }
        .onTapGesture(count: 2) {
            isShowed = true
        }
        .sheet(isPresented: $isShowed, content: {
            PlayerFullScreen()
        })

        .frame(maxHeight: 80)
        .frame(width: UIScreen.main.bounds.width)
        .background(
            VStack(spacing: 0) {
                BlurEffect(style: .systemChromeMaterial)
            })
    }
    struct BlurEffect: UIViewRepresentable {
        var style: UIBlurEffect.Style = .systemMaterial

        func makeUIView(context: Context) -> UIVisualEffectView {
            return UIVisualEffectView(effect: UIBlurEffect(style: style))
        }

        func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
            uiView.effect = UIBlurEffect(style: style)
        }
    }
}

struct Player_Previews: PreviewProvider {
    static var previews: some View {
        Player(isShowed: false)
    }
}
