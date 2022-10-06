//
//  PlayerFullScreen.swift
//  AppleMusic-SwiftUI
//
//  Created by Алексей Кудинов on 04.10.2022.
//

import SwiftUI

struct PlayerFullScreen: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                .frame(width: 50, height: 7)
                .foregroundColor(.gray)
                .padding(.top, 30)
            Image("cover")
                .resizable()
                .frame(width: 250, height: 250)
                .cornerRadius(15)
                .padding(20)
            Spacer()
            HStack {
                VStack(alignment: .leading) {
                    Text("N95")
                        .font(.system(size: 20, weight: .bold))
                    Text("Kendrick Lamar")
                }
                .padding(.leading, 25)
                Spacer()
                Button {
                    print()
                } label: {
                    Image(systemName: "ellipsis.circle.fill")
                        .resizable()
                        .foregroundColor(.gray)
                        .frame(width: 25, height: 25)
                }
                .padding(.trailing, 25)
            }
            BottomView()
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerFullScreen()
    }
}


struct PlayButtonsView: View {

    var body: some View {
        HStack {
            Button {
                print("tapped")
            } label: {
                Image(systemName: "backward.fill")
                    .font(.system(size: 35))
                    .foregroundColor(.black)
                    .buttonStyle(.plain)
                    .padding(.trailing, 40)
            }

            Button {
                print("tapped")
            } label: {
                Image(systemName: "play.fill")
                    .font(.system(size: 40))
                    .foregroundColor(.black)
                    .buttonStyle(.plain)
                    .padding(.trailing, 40)
            }
            Button {
                print("tapped")
            } label: {
                Image(systemName: "forward.fill")
                    .font(.system(size: 35))
                    .foregroundColor(.black)
                    .buttonStyle(.plain)
                    .padding(.trailing, 10)
            }
        }
    }
}


struct BottomBattonsView: View {

    var body: some View {
        HStack(content: {
            Button {
                print("tapped")
            } label: {
                Image(systemName: "quote.bubble")
                    .font(.system(size: 20))
                    .foregroundColor(.black)
                    .buttonStyle(.plain)
                    .padding(.trailing, 10)
            }

            Button {
                print("tapped")
            } label: {
                Image(systemName: "airplayaudio")
                    .font(.system(size: 20))
                    .foregroundColor(.black)
                    .buttonStyle(.plain)
                    .padding(.trailing, 80)
                    .padding(.leading, 80)
            }

            Button {
                print("tapped")
            } label: {
                Image(systemName: "list.dash")
                    .font(.system(size: 20))
                    .foregroundColor(.black)
                    .buttonStyle(.plain)
                    .padding(.trailing, 10)
            }
        })

    }
}

struct MusicDurationView: View {
    var body: some View {
        Rectangle()
            .frame(width: (UIScreen.main.bounds.width) - 60, height: 3)
            .foregroundColor(.gray)
        Circle()
            .frame(width: 10, height: 10)
            .foregroundColor(.gray)
            .padding(.top, -14)
            .padding(.trailing, (UIScreen.main.bounds.width) - 60)
    }
}

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


struct BottomView: View {
    var body: some View {
        MusicDurationView()
        Spacer()
        PlayButtonsView()
        Spacer()
        VolumeView()
        Spacer()
        BottomBattonsView()
    }
}
