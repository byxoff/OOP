//
//  Buttons.swift
//  OOP
//
//  Created by Иван Обухов on 03.02.2022.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Text("записаться")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(Color.gray)
            .padding(.horizontal, 70.0)
            .padding(.vertical, 5.0)
            }.background(Color("yellowButtons")).cornerRadius(10.0)
                
        })
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
