//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Yavuz Güner on 18.12.2022.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework :Framework
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{

            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()

            Button{
                isShowingSafariView = true
            }label: {
                AFButton(title: "Learn More")
            }
            //.sheet yerine .fullScreenCover'da yazabiliriz tam ekran olur.
        }.sheet(isPresented: $isShowingSafariView)  {
            SafariView(url: (URL(string: framework.urlString) ?? URL(string: "apple.com"))!)
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework)
            .preferredColorScheme(.dark)
    }
}
