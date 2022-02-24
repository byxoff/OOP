//
//  TrashSmallButton.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 17.02.2022.
//

import SwiftUI

struct TrashSmallButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Image(systemName: "trash.fill").foregroundColor(Color.white)
                    .font(.system(size: 28))
                    .padding(.horizontal, 1.5)
                    .padding(.all, 10.0)
            }.background(Color.red).cornerRadius(25.0)
            
        })
    }
}






struct TrashSmallButton_Previews: PreviewProvider {
    static var previews: some View {
        TrashSmallButton()
    }
}
