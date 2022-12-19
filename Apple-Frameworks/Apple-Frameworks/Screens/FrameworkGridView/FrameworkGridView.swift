//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Yavuz Güner on 15.12.2022.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    
    var body: some View {
        
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks){ framework in
                        //Tıkladığımızda çalışması için bu kodları ekliyoruz.
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)
                        }
                        
                        //NavigationStack olduğundan .onTapGesture'a da gerek yok.
                        // .onTapGesture {
                        //   viewModel.selectedFramework = framework
                    }
                }
            }
            
            .navigationTitle("Frameworks")
            
            //NavigationStack olduğundan artık .sheet'e gerek yok.
            //.sheet(isPresented: $viewModel.isShowingDetailView) {
            //  FrameworkDetailView(framework: viewModel.selectedFramework ?? //MockData.sampleFramework,
            //                isShowingDetailView: $viewModel.isShowingDetailView)
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
        }
    }
}


struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}


