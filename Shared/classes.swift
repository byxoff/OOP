//
//  classes.swift
//  OOP
//
//  Created by Иван Обухов on 30.01.2022.
//

import Foundation
import SwiftUI

class Blocks: ObservableObject{
    @Published var change = false
    @Published var changeBlue = false
    
    func changeBlock(){
        change.toggle()
    }
    
    func changeBlueBlock(){
        changeBlue.toggle()
    }
}
