//
//  MoreButton.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 17.02.2022.
//

import SwiftUI

struct MoreButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Text("подробнее")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.horizontal, 80.0)
                    .padding(.vertical, 10.0)
            }.background(Color("yellowButtons")).cornerRadius(10.0)
            
        })
    }
}

struct MoreButton_Previews: PreviewProvider {
    static var previews: some View {
        MoreButton()
    }
}
