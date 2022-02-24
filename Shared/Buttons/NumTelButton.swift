//
//  NumTelButton.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 17.02.2022.
//

import SwiftUI

struct NumTelButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Image(systemName: "phone.and.waveform.fill").foregroundColor(Color.black)
                    .padding(.leading, 20.0).font(.system(size: 24))
                    Text("8 800 000 00 00")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.trailing, 20.0)
                    .padding(.vertical, 10.0)
            }.background(Color("yellowButtons")).cornerRadius(25.0)
            
        })
    }
}


struct NumTelButton_Previews: PreviewProvider {
    static var previews: some View {
        NumTelButton()
    }
}
