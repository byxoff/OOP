//
//  CancelButton.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 17.02.2022.
//
import SwiftUI

struct CancelButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Text("отменить")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(.horizontal, 80.0)
                    .padding(.vertical, 10.0)
            }.background(Color.gray).cornerRadius(10)
            
        })
    }
}

struct CancelButton_Previews: PreviewProvider {
    static var previews: some View {
        CancelButton()
    }
}
