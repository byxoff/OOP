//
//  AgreeButton.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 17.02.2022.
//
import SwiftUI

struct AgreeButton: View {
    var body: some View {
   Button(action: {print("сработало")}, label: {
    HStack {
        Text("понятно")
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(Color.black)
            .padding(.horizontal, 40.0)
            .padding(.vertical, 10.0)
    }.background(Color("tiffani")).cornerRadius(15.0)
    
})
}
}

struct AgreeButton_Previews: PreviewProvider {
    static var previews: some View {
        AgreeButton()
    }
}
