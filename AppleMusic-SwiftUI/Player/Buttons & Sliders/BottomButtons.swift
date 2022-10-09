//
//  BottomButtons.swift
//  AppleMusic-SwiftUI
//
//  Created by Алексей Кудинов on 10.10.2022.
//

import SwiftUI

struct BottomButtonsView: View {

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

