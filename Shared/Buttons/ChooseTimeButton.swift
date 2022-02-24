//
//  ChooseTimeButton.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 17.02.2022.
//
import SwiftUI

struct ChooseTimeButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Image(systemName: "cart").foregroundColor(Color.black).font(.system(size: 24))
                    .padding(.horizontal, 10.0)
                    .padding(.vertical, 10.0)
                    Text("0")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.trailing, 20.0)
                Divider().frame(width: 2.0).background(Color.black)
                Text("Выбрать время")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)      .padding(.horizontal, 30.0)
                    
            }.background(Color("yellowButtons")).cornerRadius(10)
            
        })
    }
}

struct ChooseTimeButton_Previews: PreviewProvider {
    static var previews: some View {
        ChooseTimeButton()
    }
}
