//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Yavuz Güner on 18.12.2022.
//

import SwiftUI

final class FrameworkGridViewModel:ObservableObject{
    //NavigationStack olduğundan ötürü bu kodlara gerek yok
    /*
    var selectedFramework: Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
     */
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    ]
}
