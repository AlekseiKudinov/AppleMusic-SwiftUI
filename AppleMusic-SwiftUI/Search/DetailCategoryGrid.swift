//
//  DetailCategoryGrid.swift
//  AppleMusic-SwiftUI
//
//  Created by Алексей Кудинов on 04.10.2022.
//

import SwiftUI

struct DetailCategoryGrid: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var category = CategoryModel()
    var column = [GridItem(.flexible())]
    
    @StateObject var songInPlayer = SongModelObservable()
    
    @State var songs = SongsList.items
    
    @State var searchText = ""
    @State var searchAlbum = ""
    
    var filteredSongs: [SongModel] {
        if searchText.isEmpty {
            return songs
        } else {
            return songs.filter { $0.songTitle?.localizedCaseInsensitiveContains(searchText) ?? true || $0.album?.localizedCaseInsensitiveContains(searchText) ?? true || $0.musician?.localizedCaseInsensitiveContains(searchText) ?? true}
        }
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading) {
                Divider()
                Text("Главные треки")
                    .font(.system(size: 20, weight: .bold))
                    .frame(alignment: .leading)
                    .padding(.leading, 15)
                LazyVGrid(columns: column, alignment: .leading, content: {
                    ForEach(filteredSongs, id: \.self) { song in
                        HStack(alignment: .center) {
                            Button {
                                songInPlayer.songTitle = song.songTitle ?? ""
                            } label: {
                                Image(song.imageName ?? "")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .cornerRadius(10)
                            }
                            VStack(alignment: .leading) {
                                Text(song.songTitle ?? "")
                                    .font(.headline)
                                    .multilineTextAlignment(.leading)
                                Text(song.musician ?? "")
                                    .font(.callout)
                                    .multilineTextAlignment(.leading)
                                    .padding(.bottom, 5)
                                Text("Альбом · \(song.album ?? "")")
                                    .font(.callout)
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(.secondary)
                            }
                        }
                        Divider()
                    }
                })
                .searchable(text: $searchText, prompt: "Search song or album")
                .padding(.leading, 15)
                .padding(.bottom, 90)
                
            }
            .navigationBarTitle("\(category.title ?? "")", displayMode: .large)
            .navigationBarItems(leading: Button {
                self.mode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "chevron.left")
                    .foregroundColor(.red)
            }, trailing: Button {} label: {
                Image(systemName: "ellipsis.circle.fill")
                    .foregroundColor(.red)
            })
        }
        .environmentObject(songInPlayer)
    }
}

struct DetailCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        DetailCategoryGrid()
    }
}
