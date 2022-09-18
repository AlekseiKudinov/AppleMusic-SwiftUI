//
//  MainView.swift
//  AppleMusic-SwiftUI
//
//  Created by Алексей Кудинов on 12.09.2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            TabView {
                LibraryView()
                    .tabItem {
                        Image(systemName: "music.note.tv.fill")
                        Text("Медиатека")
                    }
                RadioView()
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
            .accentColor(.red)

            Player()
                .offset(y: 305)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
