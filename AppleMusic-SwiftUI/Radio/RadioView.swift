//
//  RadioView.swift
//  AppleMusic-SwiftUI
//
//  Created by Алексей Кудинов on 12.09.2022.
//

import SwiftUI

struct RadioView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    Divider()
                    RadioCollections()
                    Divider()
                    Text("Станции")
                        .font(.system(size: 20, weight: .medium))
                        .frame(alignment: .leading)
                        .padding(.leading, 15)
                    RadioStations()
                }
            }
            .navigationTitle("Радио")
        }
    }
}

struct RadioTab_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
