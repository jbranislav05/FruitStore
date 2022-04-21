//
//  FruitCardView.swift
//  TestPKCV
//
//  Created by Branislav Jovanović on 14.4.22..
//

import SwiftUI
import SDWebImageSwiftUI

struct FruitCardView: View {
    var name = ""
    var url = ""
    
    var body: some View {
        VStack {
            Text(name.capitalizingFirstLetter())
                .font(.system(size: 30))
                .fontWeight(.bold)
            
            AnimatedImage(url: URL(string: url))
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .shadow(radius: 8)
                .padding(50)
            
            Spacer()

        }
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
    }
}
