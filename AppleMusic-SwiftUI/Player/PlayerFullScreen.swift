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

struct BottomView: View {
    var body: some View {
        MusicDurationView()
        Spacer()
        PlayButtonsView()
        Spacer()
        VolumeView()
        Spacer()
        BottomButtonsView()
    }
}
