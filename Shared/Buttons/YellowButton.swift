//
//  YellowButton.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 17.02.2022.
//

import SwiftUI

struct YellowButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Text("записаться")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.horizontal, 80.0)
                    .padding(.vertical, 5.0)
            }.background(Color("yellowButtons")).cornerRadius(10.0)
            
        })
    }
}

struct YellowButton_Previews: PreviewProvider {
    static var previews: some View {
        YellowButton()
    }
}
