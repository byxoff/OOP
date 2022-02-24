//
//  ServicesButton.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 17.02.2022.
//

import SwiftUI

struct ServicesButton: View {
    @ObservedObject var blocks = Blocks()
    var body: some View {
        Button(action: {print("сработало")
            blocks.changeBlock()
        }){
            HStack{
            }.frame(width: 124, height:44 )
                .background(Color.white)
                .cornerRadius(10.0)
                .overlay(HStack{
                    Text("услуги")
                        .font(.headline)
                        .fontWeight(.medium)
                        .foregroundColor(self.blocks.change ? Color.white : Color.black)
                        .padding(.horizontal, 10.0)
                        .padding(.vertical, 5.0)
                }.frame(width: 120, height: 40)
                    .background(self.blocks.change ? Color.black : Color.white)
                    .cornerRadius(10.0))
        }
    }
}

struct ServicesButton_Previews: PreviewProvider {
    static var previews: some View {
        ServicesButton()
    }
}
