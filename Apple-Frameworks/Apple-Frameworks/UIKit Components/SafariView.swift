//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Yavuz Güner on 18.12.2022.
//

import SwiftUI
import SafariServices

struct SafariView:UIViewControllerRepresentable{
    
    let url:URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
    
   
    
    
    
}
