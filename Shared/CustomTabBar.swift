//
//  CustomTabBar.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 21.02.2022.
//

import SwiftUI

struct CustomTabBar: View {
    @State var index = 0
    var body: some View {
        GeometryReader{geometry in
            if (self.index == 0){
                NavigationView()
            }
            else{
                Buttons()
            }
        }
        HStack{
            Button(action: {
                self.index = 0
            }){
                Image(systemName: "star.fill").foregroundColor(Color.gray)
            }
            Button(action: {
                self.index = 1
            }){
                Image(systemName: self.index == 0 ? "heart" : "heart.fill").font(.system(size: 32)).foregroundColor(self.index == 0 ? Color.black : Color.red)
            }
        }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar()
    }
}
