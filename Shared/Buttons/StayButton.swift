//
//  StayButton.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 17.02.2022.
//

import SwiftUI

struct StayButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Text("остаться")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.horizontal, 70.0)
                    .padding(.vertical, 15.0)
            }.background(Color("yellowButtons")).cornerRadius(15.0)
            
        })
    }
}


struct StayButton_Previews: PreviewProvider {
    static var previews: some View {
        StayButton()
    }
}
