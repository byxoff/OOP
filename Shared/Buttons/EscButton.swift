//
//  EscButton.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 17.02.2022.
//

import SwiftUI

struct  EscButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Text("выйти")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(.horizontal, 70.0)
                    .padding(.vertical, 15.0)
            }.background(Color.gray).cornerRadius(15.0)
            
        })
    }
}



struct EscButton_Previews: PreviewProvider {
    static var previews: some View {
        EscButton()
    }
}
