//
//  Button1.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 17.02.2022.
//

import SwiftUI

struct Button1 : View{
    var body: some View{
        Button(action: {
            
        }) {
            HStack{}.frame(width: 124, height: 44).background(Color.white).cornerRadius(10).overlay(HStack{
                Text("кнопка").foregroundColor(Color.white)
            }.frame(width: 120, height: 40).background(Color.black).cornerRadius(10))
        }
        
    }
}

struct Button1_Previews: PreviewProvider {
    static var previews: some View {
        Button1()
    }
}
