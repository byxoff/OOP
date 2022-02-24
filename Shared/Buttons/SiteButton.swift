//
//  SiteButton.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 17.02.2022.
//

import SwiftUI

struct  SiteButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Image(systemName: "network").foregroundColor(Color.black)
                    .padding(.leading, 20.0).font(.system(size: 24))
                    Text("www.washtime.ru")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.trailing, 20.0)
                    .padding(.vertical, 10.0)
            }.background(Color("yellowButtons")).cornerRadius(25.0)
            
        })
    }
}


struct SiteButton_Previews: PreviewProvider {
    static var previews: some View {
        SiteButton()
    }
}
