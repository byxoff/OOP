//
//  SideBar.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 22.02.2022.
//

import SwiftUI

struct SideBar: View {
  @State  var index = 0
    var body: some View {
        HStack{
        
        ZStack{
            VStack(spacing:10){ 
                 Spacer()
                Button(action: {
                    self.index = 0
                }){
                    Text("Экран1")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor( self.index == 0 ? Color.blue : Color.black)
                }
                Button(action: {
                                    self.index = 1
                                }){
                                    Text("Экран2")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor( self.index == 1 ? Color.blue : Color.black)
                                }
                Button(action: {
                                    self.index = 2
                                }){
                                    Text("Экран3")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor( self.index == 2 ? Color.blue : Color.black)
                                }
                Button(action: {
                                    self.index = 3
                                }){
                                    Text("Экран4")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor( self.index == 3 ? Color.blue : Color.black)
                                }
                Button(action: {
                                    self.index = 4
                                }){
                                    Text("Экран5")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor( self.index == 4 ? Color.blue : Color.black)
                                }
                Spacer()            }
            .padding(.horizontal, 10.0)
        }
            GeometryReader{geometry in
                        if( self.index == 0){
                            Screen1()
                        }
                        if( self.index == 1){
                                        Screen2()
                                    }
                        if( self.index == 2){
                                        Screen3()
                                    }
                        if( self.index == 3){
                                        Screen4()
                                    }
                        if( self.index == 4){
                                        Screen5()
                                    }
                    }
            
        }
}
}

struct SideBar_Previews: PreviewProvider {
    static var previews: some View {
        SideBar()
    }
}
