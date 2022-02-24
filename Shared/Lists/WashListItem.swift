//
//  WashListItem.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 17.02.2022.
//

import SwiftUI

struct WashListItem: View {
    var body: some View {
        HStack(spacing: 3){
            VStack{
                HStack{
                    Image(systemName: "clock.arrow.circlepath").font(.system(size: 18)).foregroundColor(Color.white)
                    Spacer()
                    Text("14:30").font(.system(size: 16)).foregroundColor(Color.green)
                }.padding(.horizontal, 10).padding(.top, 10)
                HStack{
                    Image(systemName: "location.square").font(.system(size: 16)).foregroundColor(Color.white)
                    Spacer()
                    Text("0.9 км").font(.system(size: 14)).foregroundColor(Color.white)                }.padding(.horizontal, 10)
                HStack(spacing: 1){
                    ForEach((1...5), id: \.self){_ in
                        Image(systemName: "star.fill").foregroundColor(Color.yellow).font(.system(size: 12))
                    }
                }.padding(.horizontal, 10).padding(.bottom, 10)
            }.frame(width: 100,height: 80).background(Color("greyDark")).cornerRadius(5.0)
            VStack{
                HStack{
                    Text("My Super Wash").font(.title3).fontWeight(.bold).foregroundColor(Color.yellow)
                    Spacer()
                }.padding(.horizontal, 10)
                HStack{
                    Text("город Москва. Вознесенский переулок, 82").font(.system(size: 14)).foregroundColor(Color.white)
                    Spacer()
                }.padding(.horizontal, 10)

            }.frame(height: 80).background(Color("greyDark")).cornerRadius(5.0)
        }.padding(.horizontal, 20)
    }
}

struct WashListItem_Previews: PreviewProvider {
    static var previews: some View {
        WashListItem()
    }
}
