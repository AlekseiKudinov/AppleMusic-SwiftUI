//
//  Player.swift
//  AppleMusic-SwiftUI
//
//  Created by Алексей Кудинов on 12.09.2022.
//

import SwiftUI

struct Player: View {
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
        .background(.white)
    }
}

struct Player_Previews: PreviewProvider {
    static var previews: some View {
        Player()
    }
}
