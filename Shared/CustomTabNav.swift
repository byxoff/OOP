//
//  CustomTabNav.swift
//  OOP (iOS)
//
//  Created by Евгений Кокшаров on 21.02.2022.
//

import SwiftUI

struct CustomTabNav: View {
    @State var index = 0
    
    var body: some View {
        VStack{
            GeometryReader{ geometry in
            if(self.index == 0){
                Screen1()
            }
                if(self.index == 1){
                    Screen2()
                }
                if(self.index == 2){
                    Screen3()
                }
                if(self.index == 3){
                    Screen4()
                }
                if(self.index == 4){
                    Screen5()
                }
            }
            
            
            ZStack{
                
                HStack{
                    Button(action:{
                        self.index = 0
                    }) {
                        Image(systemName:"house.fill")
                    }.foregroundColor(self.index == 0 ? .black : .gray)
                    Spacer(minLength: 12)
                    
                    Button(action: {
                        self.index = 1
                        
                    }) {
                        Image(systemName:"magnifyingglass")
                    }.foregroundColor(self.index == 1 ? .black : .gray)
                    Spacer().frame(width: 120)
                    
                    Button(action: {
                        self.index = 2
                    }) {
                        Image(systemName:"person.fill")
                    }.foregroundColor(self.index == 2 ? .black : .gray)
                    Spacer(minLength: 12)
                    Button(action: {
                        self.index = 3
                    }) {
                        Image(systemName:"line.3.horizontal")
                    }.foregroundColor(self.index == 3 ? .black : .gray)
                    
                }
                .padding()
                .padding(.horizontal, 22)
                .background(CurvedShape())
                
                Button(action: {
                    self.index = 4
                }){
                    Image(systemName: self.index == 4 ? "heart.fill" : "heart" )      .renderingMode(.original)
                        .padding(25)
                        .foregroundColor(Color.black)
                    
                }.background(Color("yellowButtons"))
                 .clipShape(Circle())
                 .offset(y: -32)
                 .shadow(radius: 5)
            }
            
            
        }.edgesIgnoringSafeArea(.top)
    }
}

struct Screen1: View {

    var body: some View {
        VStack{
            HStack {
                Spacer()
            }
            Spacer()
        }.background(Color.red).edgesIgnoringSafeArea(.all)
       
        
    }
}

struct Screen2: View {

    var body: some View {
        VStack{
            HStack {
                Spacer()
            }
            Spacer()
        }.background(Color.gray).edgesIgnoringSafeArea(.all)
       
        
    }
}
struct Screen3: View {

    var body: some View {
        VStack{
            HStack {
                Spacer()
            }
            Spacer()
        }.background(Color.green).edgesIgnoringSafeArea(.all)
       
        
    }
}
struct Screen4: View {

    var body: some View {
        VStack{
            HStack {
                Spacer()
            }
            Spacer()
        }.background(Color.yellow).edgesIgnoringSafeArea(.all)
       
        
    }
}
struct Screen5: View {

    var body: some View {
        VStack{
            HStack {
                Spacer()
            }
            Spacer()
        }.background(Color.blue).edgesIgnoringSafeArea(.all)
       
        
    }
}



struct CustomTabNav_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabNav()
    }
}

struct CurvedShape: View {
    var body: some View {
        Path { path in
            
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 55))
            
            path.addArc(center: CGPoint(x: UIScreen.main.bounds.width / 2, y: 55), radius: 30, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
            path.addLine(to: CGPoint(x: 0, y: 55))
        }.fill(Color.white)
            .rotationEffect(.init(degrees: 180))
    }
}
