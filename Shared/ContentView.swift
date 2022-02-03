//
//  ContentView.swift
//  Shared
//
//  Created by Иван Обухов on 30.01.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Блоки")
            RedBlock()
            BlueBlock()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RedBlock: View {
    @ObservedObject var blocks = Blocks()
    var body: some View {
        VStack{
            Button(action: {
                blocks.changeBlock()
            }, label: {
                Text(self.blocks.change ? "синий блок" : "красный блок")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .frame(width: 200.0)
                    .padding(100.0)        })        }
        .background(self.blocks.change ? Color.blue : Color.red)
    }
}

struct BlueBlock: View {
    @ObservedObject var blocks = Blocks()
    var body: some View {
        VStack{
            Button(action: {blocks.changeBlueBlock()}, label: {Text(self.blocks.changeBlue ? "красный блок" : "синий блок")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .frame(width: 200.0)
                    .padding(100.0)})
            
        }
        .background(self.blocks.changeBlue ? Color.red : Color.blue)
    }
}
