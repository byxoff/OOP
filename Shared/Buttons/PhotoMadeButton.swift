//
//  PhotoMadeButton.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 17.02.2022.
//

import SwiftUI

struct PhotoMadeButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Text("Сфотографировать")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.horizontal, 80.0)
                    .padding(.vertical, 15.0)
            }.background(Color("yellowButtons")).cornerRadius(15.0)
            
        })
    }
}


struct PhotoMadeButton_Previews: PreviewProvider {
    static var previews: some View {
        PhotoMadeButton()
    }
}
