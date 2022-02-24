//
//  HeadMenu.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 23.02.2022.
//

import SwiftUI

struct HeadMenu: View {
    
    @State var index = 0
    @State var show = false
    
    var body: some View {
        ZStack{
            HStack{
                VStack{
                    Image("Smit")
                        .clipShape(Circle())
                    
                    Text("Привет,")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.top, 10)
                    Text("Eugeniy")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    Button(action: {
                        self.index = 0
                        
                        withAnimation {
                            self.show.toggle()
                            
                        }
                    }) {
                        HStack(spacing: 25){
                            Image("catalogue")
                                .foregroundColor(self.index == 0 ? Color("yellowButtons") : Color.white)
                            Text("Каталог")
                                .foregroundColor(self.index == 0 ? Color("yellowButtons") : Color.white)
                        }.padding(.top, 25)
                        
                        Button(action: {
                            self.index = 1
                            withAnimation {
                                self.show.toggle()
                                
                            }
                            
                        }){
                            HStack(spacing: 25){
                                Image("cart")
                                    .foregroundColor(self.index == 1 ? Color("yellowButtons") : Color.white)
                                Text("Корзина")
                                    .foregroundColor(self.index == 1 ? Color("yellowButtons") : Color.white)
                            }.padding(.vertical, 10)
                                .padding(.horizontal)
                            background(self.index == 1 ? Color("yellowButtons").opacity(0.2) : Color.clear).cornerRadius(10)
                        }
                        Button(action: {
                            self.index = 2
                            withAnimation {
                                self.show.toggle()
                                
                            }
                            
                        }){
                            HStack(spacing: 25){
                                Image("folder.fill")
                                    .foregroundColor(self.index == 2 ? Color("yellowButtons") : Color.white)
                                Text("Избранное")
                                    .foregroundColor(self.index == 2 ? Color("yellowButtons") : Color.white)
                            }.padding(.vertical, 10)
                                .padding(.horizontal)
                            background(self.index == 2 ? Color("yellowButtons").opacity(0.2) : Color.clear).cornerRadius(10)
                        }
                        
                        Button(action: {
                            self.index = 3
                            withAnimation {
                                self.show.toggle()
                                
                            }
                            
                        }){
                            HStack(spacing: 25){
                                Image("orders")
                                    .foregroundColor(self.index == 3 ? Color("yellowButtons") : Color.white)
                                Text("Мои заказы")
                                    .foregroundColor(self.index == 3 ? Color("yellowButtons") : Color.white)
                            }.padding(.vertical, 10)
                                .padding(.horizontal)
                            background(self.index == 3 ? Color("yellowButtons").opacity(0.2) : Color.clear).cornerRadius(10)
                        }
                        
                        Divider()
                            .frame(width: 150, height: 1)
                            .background(Color.white)
                            .padding(.vertical, 30)
                        
                        Button (action: {
                            //
                            
                        }){
                            HStack{
                                Image("out")
                                    .foregroundColor(Color.white)
                                Text("Выход")
                                    .foregroundColor(Color.white)
                                
                                
                            }.padding(.vertical, 10)
                                .padding(.horizontal)
                        }
                        Spacer(minLength: 0)
                    }.padding(.top, 25)
                        .padding(.horizontal, 20)
                    
                }
                Spacer(minLength: 0)
            }.padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            
            VStack(spacing: 0){
                HStack(spacing: 15){
                    Button(action:{
                        withAnimation {
                            self.show.toggle()
                        }
                    }){
                        Image(systemName: self.show ? "Smit" : "line.horizontal.3")
                            .resizable()
                            .frame(width: self.show ? 18 : 22, height: 18)
                            .foregroundColor(Color.black.opacity(0.4))
                    }
                    Text(self.index == 0 ? "Каталог" : (self.index == 1 ? "Корзина" : (self.index == 2 ? "Избранное" : "мои заказы")))
                        .font(.title)
                        .foregroundColor(Color.black.opacity(0.6))
                    Spacer(minLength: 0)
                    
                }
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding()
                
                GeometryReader { _ in
                    VStack{
                        if self.index == 0 {
                            Catalogue()
                        }
                        else if self.index == 1 {
                            Cart()
                        }
                        else if self.index == 2 {
                            Folder()
                        } else {
                            Orders()
                        }
                    }
                }
            }.background(Color.white)
                .cornerRadius(self.show ? 30 : 0)
                .scaleEffect(self.show ? 0.9 : 1)
                .offset(x: self.show ? UIScreen.main.bounds.width / 2 : 0, y: self.show ? 15 : 0)
                .rotationEffect(.init(degrees: self.show ? -5 : 0))
        }.background(Color("yellowButtons")).edgesIgnoringSafeArea(.all)
            .edgesIgnoringSafeArea(.all)
    }
}


struct Catalogue: View {
    var body: some View{
        VStack{
            Text("Каталог")
        }
    }
}

struct Cart: View {
    var body: some View{
        VStack{
            Text("Корзина")
        }
    }
}
struct Orders: View {
    var body: some View{
        VStack{
            Text("Мои заказы")
        }
    }
}
struct Folder: View {
    var body: some View{
        VStack{
            Text("Избранное")
        }
    }
}

struct HeadMenu_Previews: PreviewProvider {
    static var previews: some View {
        HeadMenu()
    }
}

