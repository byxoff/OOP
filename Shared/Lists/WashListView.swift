//
//  WashListView.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 17.02.2022.
//

import SwiftUI

struct WashListView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 10) {
                ForEach((1...20),id: \.self){_ in
                    WashListItem()            }
            }
        }.ignoresSafeArea(.all).background(Color("greyColor"))
    }
}

struct WashListView_Previews: PreviewProvider {
    static var previews: some View {
        WashListView()
    }
}
