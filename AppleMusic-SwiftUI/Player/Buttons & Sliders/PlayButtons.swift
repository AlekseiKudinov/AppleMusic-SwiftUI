//
//  PlayButtons.swift
//  AppleMusic-SwiftUI
//
//  Created by Алексей Кудинов on 10.10.2022.
//

import SwiftUI

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
