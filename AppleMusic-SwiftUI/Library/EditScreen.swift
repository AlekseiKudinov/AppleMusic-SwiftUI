//
//  EditScreen.swift
//  AppleMusic-SwiftUI
//
//  Created by Алексей Кудинов on 11.09.2022.
//

import SwiftUI

struct EditScreen: View {
    @State var cells: [Row] = libraryCatalogue.items
    @State private var selectedCells = Set<UUID>()

    var body: some View {
        NavigationView {
            List(selection: $selectedCells) {
                ForEach($cells, id: \.id) { $cell in
                    HStack {
                        Image(systemName: cell.image)
                            .foregroundColor(.red)
                        Text(cell.title)
                    }
                }
                .onMove(perform: moveItem)
            }
            .environment(\.editMode, Binding.constant(EditMode.active))
            .listStyle(.plain)
        }

    }
    func moveItem(from source: IndexSet, to destination: Int) {
        cells.move(fromOffsets: source, toOffset: destination)
    }
}

struct EEditScreen_Previews: PreviewProvider {
    static var previews: some View {
        EditScreen()
    }
}

