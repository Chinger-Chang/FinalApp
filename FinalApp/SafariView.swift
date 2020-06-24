//
//  SafariView.swift
//  FinalApp
//
//  Created by User20 on 2020/6/24.
//  Copyright © 2020 User23. All rights reserved.
//

import Foundation
import SwiftUI
import SafariServices
struct SafariView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> SFSafariViewController {
         SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
    
    typealias UIViewControllerType = SFSafariViewController
    
    let url: URL
}

struct SafariView_Previews: PreviewProvider {
    static var previews: some View {
        SafariView(url: URL(string: "https://medium.com/@apppeterpan")!)
    }
}
