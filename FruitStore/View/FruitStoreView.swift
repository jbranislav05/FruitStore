//
//  SwiftUIView.swift
//  TestPKCV
//
//  Created by Branislav Jovanović on 14.4.22..
//

import SwiftUI

struct FruitStoreView: View {
    
    @ObservedObject var fruitsVM = FruitsViewModel()
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack {
                    List(fruitsVM.fruitList) { fruit in
                        NavigationLink(destination: FruitCardView(name: fruit.name, url: fruit.url)) {
                            Text(fruit.name.capitalizingFirstLetter())
                        }
                    }
                }
                VStack{
                    Spacer()
                    HStack(alignment: .bottom){
                        Button(action: {
                            fruitsVM.removeDuplicateFruits(fruitsArray: fruitsVM.fruitList)
                            
                        }, label: {
                            Text("Remove duplicates")
                        })
                        .font(.system(size: 15, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.leading, 30)
                        .padding(.trailing, 30)
                        .padding(.top, 15)
                        .padding(.bottom, 15)
                        .background(Color.blue)
                        .cornerRadius(10)
                    }
                    .padding(25)
                }
            }
            .navigationBarTitle("FruitsApp")
        }
    }
}

struct FruitsAppView_Previews: PreviewProvider {
    static var previews: some View {
        FruitStoreView()
    }
}

