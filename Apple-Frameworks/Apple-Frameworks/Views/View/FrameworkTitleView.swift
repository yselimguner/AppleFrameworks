//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Yavuz Güner on 18.12.2022.
//

import SwiftUI

struct FrameworkTitleView:View{
    let framework:Framework
    
    var body:some View{
        VStack{
            Image(uiImage: UIImage(named: framework.imageName)!)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding() //Boşluk bırakmak için daha aralarda
    }
    
}

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleView(framework: MockData.sampleFramework)
    }
}
