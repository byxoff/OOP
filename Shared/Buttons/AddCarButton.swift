//
//  AddCarButton.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 17.02.2022.
//

import SwiftUI

struct AddCarButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Text("Добавить автомобиль")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.horizontal, 90.0)
                    .padding(.vertical, 15.0)
            }.background(Color("yellowButtons")).cornerRadius(15.0)
            
        })
    }
}






struct AddCarButton_Previews: PreviewProvider {
    static var previews: some View {
        AddCarButton()
    }
}
