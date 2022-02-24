//
//  ChooseDataButton.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 17.02.2022.
//
import SwiftUI

struct ChooseDataButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                    Text("Сегодня в 13:30")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.horizontal, 40.0)
                    .padding(.vertical, 15.0)
                Divider().frame(width: 2.0).background(Color.black)
                Text("Далее")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)      .padding(.horizontal, 20.0)
                    
            }.background(Color("yellowButtons")).cornerRadius(10)
            
        })
    }
}

struct ChooseDataButton_Previews: PreviewProvider {
    static var previews: some View {
        ChooseDataButton()
    }
}
