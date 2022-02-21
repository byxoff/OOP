//
//  SelectButton.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 17.02.2022.
//

import SwiftUI

struct selectAlbButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Text("Выбрать из альбома")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.horizontal, 80.0)
                    .padding(.vertical, 15.0)
            }.background(Color("yellowButtons")).cornerRadius(15.0)
            
        })
    }
}

struct selectAlbButton_Previews: PreviewProvider {
    static var previews: some View {
        selectAlbButton()
    }
}
