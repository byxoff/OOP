//
//  СontinueButton.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 17.02.2022.
//

import SwiftUI

struct СontinueButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Text("Продолжить")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.horizontal, 100.0)
                    .padding(.vertical, 20.0)
            }.background(Color("yellowButtons")).cornerRadius(15.0)
            
        })
    }
}

struct СontinueButton_Previews: PreviewProvider {
    static var previews: some View {
        СontinueButton()
    }
}
