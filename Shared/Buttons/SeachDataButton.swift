//
//  SeachDataButton.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 17.02.2022.
//

import SwiftUI

struct SeachDataButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Text("Найти мойку")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.horizontal, 90.0)
                    .padding(.vertical, 15.0)
            }.background(Color("yellowButtons")).cornerRadius(15.0)
            
        })
    }
}


struct SeachDataButton_Previews: PreviewProvider {
    static var previews: some View {
        SeachDataButton()
    }
}
