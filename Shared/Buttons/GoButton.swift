//
//  GoButton.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 17.02.2022.
//
import SwiftUI

struct GoButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Text("Поехали")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color("yellowButtons"))
                    .padding(.horizontal, 40.0)
                    .padding(.vertical, 10.0)
                
                Divider().frame(width: 2.0, height: 30.0).background(Color("yellowButtons"))
                Text("0.9")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color("yellowButtons"))      .padding(.horizontal, 20.0)
            }.background(Color.gray).cornerRadius(10)
            
        })
    }
}
struct GoButton_Previews: PreviewProvider {
    static var previews: some View {
        GoButton()
    }
}
