//
//  ContentView.swift
//  AppleMusic-SwiftUI
//
//  Created by Алексей Кудинов on 08.09.2022.
//

import SwiftUI

struct LibraryView: View {

    @State var editButton = false

    var body: some View {
        NavigationView {
            VStack {
                if editButton == false {

                    Spacer()

                    Text("Ищите свою музыку?")
                        .font(.system(size: 25, weight: .bold, design: .default))
                        .padding(0.1)
                    Text("Здесь появится купленная Вами в ITunes Store музыка.")
                        .multilineTextAlignment(.center)
                        .font(.callout)
                        .foregroundColor(.secondary)
                        .padding(.horizontal, 10)
                } else {
                    EditScreen()
                }

                Spacer()

            }
            .navigationTitle("Медиатека")
            .toolbar {
                Button {
                    editButton.toggle()
                } label: {
                    Text(editButton ? "Готово" : "Править")
                }
                .foregroundColor(.red)
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
