//
//  InfoButton.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 17.02.2022.
//

import SwiftUI

struct InfoButton: View {
    @ObservedObject var blocks = Blocks()
    var body: some View {
        Button(action:{
            print("информация")
            blocks.changeBlock()
        }){
            HStack {
            }.frame(width: 164.0, height:44.0).background(Color.white).cornerRadius(10).overlay(HStack{
                Text("информация")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(self.blocks.change ? Color.black : Color.white)
                    .padding(.horizontal, 10.0)
                    .padding(.vertical, 5.0)
            }.frame(width: 160.0, height:40.0).background(self.blocks.change ? Color.white : Color.black).cornerRadius(10))
        }
    }
}

struct InfoButton_Previews: PreviewProvider {
    static var previews: some View {
        InfoButton()
    }
}
