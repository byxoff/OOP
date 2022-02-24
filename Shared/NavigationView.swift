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


struct TrashSmallButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Image(systemName: "trash.fill").foregroundColor(Color.white)
                    .font(.system(size: 28))
                    .padding(.horizontal, 1.5)
                    .padding(.all, 10.0)
            }.background(Color.red).cornerRadius(25.0)
            
        })
    }
}

struct NetSmallButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Image(systemName: "network").foregroundColor(Color.black)
                    .padding(.all, 10.0).font(.system(size: 28))
                    
            }.background(Color("yellowButtons")).cornerRadius(25.0)
            
        })
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
    }
}
