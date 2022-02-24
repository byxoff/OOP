//
//  EnterButton.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 17.02.2022.
//

import SwiftUI

struct EnterButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Text("Войти")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.horizontal, 60.0)
                    .padding(.vertical, 20.0)
            }.background(Color("yellowButtons")).cornerRadius(15.0)
            
        })
    }
}

struct EnterButton_Previews: PreviewProvider {
    static var previews: some View {
        EnterButton()
    }
}
