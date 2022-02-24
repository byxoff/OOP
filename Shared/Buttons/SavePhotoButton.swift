//
//  SavePhotoButton.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 17.02.2022.
//

import SwiftUI

struct SavePhotoButton: View {
    var body: some View {
   Button(action: {print("сработало")}, label: {
    HStack {
        Text("Cохранить фото")
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(Color.black)
            .padding(.horizontal, 90.0)
            .padding(.vertical, 10.0)
    }.background(Color.yellow).cornerRadius(15.0)
    
})
}
}



struct SavePhotoButton_Previews: PreviewProvider {
    static var previews: some View {
        SavePhotoButton()
    }
}
