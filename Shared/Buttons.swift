//
//  Buttons.swift
//  OOP
//
//  Created by Иван Обухов on 03.02.2022.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        ScrollView {
            HStack {
                Spacer()
                VStack {
                    Spacer().frame(height: 300.0)
                    YellowButton()
                    ServicesButton()
                    Spacer()
                }
                Spacer()
            }
        }.ignoresSafeArea(.all).background(Color.black)
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}

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

struct ServicesButton: View {
    var body: some View {
        Button(action: {print("сработало")}){
                Text("услуги")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .padding(.horizontal, 10.0)
                    .padding(.vertical, 5.0)
        }.frame(width: 120, height: 40).overlay(RoundedRectangle(cornerRadius: 10)
            .stroke((Color.white), lineWidth: 2))
    }
}
