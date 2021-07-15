//
//  NavView.swift
//  InstaCrone
//
//  Created by Yuu Shimizu on 2021/07/13.
//

import SwiftUI

struct NavView: View {
    var colWidth: CGFloat
    
    var body: some View {
        LazyVGrid(columns: [
            GridItem(.fixed(colWidth)),
            GridItem(.fixed(colWidth)),
            GridItem(.fixed(colWidth))
        ]) {
            Text("InstaClone")
                .font(.custom("OleoScript-Regular", size: 20))
                .padding(.leading, 50)
            
            Spacer()
            
            Image(systemName: "paperplane")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20)
                .rotationEffect(.degrees(-28))
        }
    }
}
