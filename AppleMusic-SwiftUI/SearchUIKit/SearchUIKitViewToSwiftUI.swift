//
//  SearchUIKitViewToSwiftUI.swift
//  AppleMusic-SwiftUI
//
//  Created by Алексей Кудинов on 10.10.2022.
//

import SwiftUI
import UIKit

struct SearchUIKitVCRepresentable: UIViewControllerRepresentable  {
    func makeUIViewController(context: Context) -> UIViewController {
        return SearchVC()

    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}

struct SearchKitView_Previews: PreviewProvider {
    static var previews: some View {
        SearchUIKitVCRepresentable()
    }
}
