//
//  NavigationView.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 21.02.2022.
//

import SwiftUI

struct NavigationView: View {
    var body: some View {
        TabView{
            ContentView().tabItem{
                VStack {
                    TrashSmallButton()
                    Text("Корзина")
                }
                
            }
            Buttons().tabItem{
                VStack {
                    NetSmallButton()
                    Text("Глобус")
                }
            }
        }.accentColor(Color.green)
        
        
        
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
    }
}
