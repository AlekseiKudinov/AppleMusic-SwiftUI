//
//  ContentView.swift
//  AppleMusic-SwiftUI
//
//  Created by Алексей Кудинов on 08.09.2022.
//

import SwiftUI

struct ContentView: View {

    @State var editButton = false

    var body: some View {
        NavigationView {
            TabView {
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
                    } else {
                        EditScreen()
                    }

                    Spacer()

                    HStack {
                        Image("cover")
                            .resizable()
                            .frame(width: 60, height: 60, alignment: .bottomLeading)
                            .cornerRadius(10)
                            .shadow(radius: 20)
                        Text("Mr. Morale")
                            .font(.title2)
                            .padding()

                        Spacer()

                        Button {
                            print("play button is tapped")
                        } label: {
                            Image(systemName: "play.fill")
                                .font(.system(size: 25))
                                .foregroundColor(.black)
                                .buttonStyle(.plain)
                                .padding(5)
                        }
                        Button {
                            print("next button is tapped")
                        } label: {
                            Image(systemName: "forward.fill")
                                .font(.system(size: 25))
                                .foregroundColor(.black)
                                .buttonStyle(.plain)
                                .padding(5)
                        }
                    }
                } .padding(10)

                    .tabItem {
                        Text("Медиатека")
                        Image(systemName: "music.note.tv.fill")
                    }
                Text("Радио")
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                Text("Поиск")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            .navigationTitle("Медиатека")
            .accentColor(.red)
            .toolbar {
                    Button {
                        editButton.toggle()
                    } label: {
                        if editButton {
                            Text("Готово")
                        } else {
                            Text("Править")
                        }
                    }
                    .foregroundColor(.red)
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
