//
//  NetSmallButton.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 17.02.2022.
//
import SwiftUI

struct NetSmallButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Image(systemName: "network").foregroundColor(Color.black)
                    .padding(.all, 10.0).font(.system(size: 28))
                    
            }.background(Color("yellowButtons")).cornerRadius(25.0)
            
        })
    }
}
struct NetSmallButton_Previews: PreviewProvider {
    static var previews: some View {
        NetSmallButton()
    }
}
