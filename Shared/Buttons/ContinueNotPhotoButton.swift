//
//  ContinueNotPhotoButton.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 17.02.2022.
//

import SwiftUI

struct  ContinueNotPhotoButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Text("Продолжить без фото")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(.horizontal, 80.0)
                    .padding(.vertical, 15.0)
            }.background(Color.gray).cornerRadius(15.0)
            
        })
    }
}



struct ContinueNotPhotoButton_Previews: PreviewProvider {
    static var previews: some View {
        ContinueNotPhotoButton()
    }
}
