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
                    VStack {
                    YellowButton()
                    ServicesButton()
                    InfoButton()
                    FeedBack()
                    Button1()
                    MoreButton()
                    Spacer()
                    СontinueButton()
                    EnterButton()
                }
                VStack {
                    CallButton()
                    NetButton()
                    HStack{
                        CallSmallButton()
                        NetSmallButton()
                    }
                    GoButton()
                    CancelButton()
                    AgreeButton()
                    AddfeedbackButton()
                    ChooseServiceButton()
                    ChooseTimeButton()
                    ChooseDataButton()
                }
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
struct MoreButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Text("подробнее")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.horizontal, 80.0)
                    .padding(.vertical, 10.0)
            }.background(Color("yellowButtons")).cornerRadius(10.0)
            
        })
    }
}
struct AgreeButton: View {
    var body: some View {
   Button(action: {print("сработало")}, label: {
    HStack {
        Text("понятно")
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(Color.black)
            .padding(.horizontal, 40.0)
            .padding(.vertical, 10.0)
    }.background(Color("tiffani")).cornerRadius(15.0)
    
})
}
}
struct AddfeedbackButton: View {
    var body: some View {
   Button(action: {print("сработало")}, label: {
    HStack {
        Text("добавить отзыв")
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(Color.black)
            .padding(.horizontal, 90.0)
            .padding(.vertical, 10.0)
    }.background(Color("tiffani")).cornerRadius(15.0)
    
})
}
}
struct GoButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Text("Поехали")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color("yellowButtons"))
                    .padding(.horizontal, 40.0)
                    .padding(.vertical, 10.0)
                
                Divider().frame(width: 2.0, height: 30.0).background(Color("yellowButtons"))
                Text("0.9")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color("yellowButtons"))      .padding(.horizontal, 20.0)
            }.background(Color.gray).cornerRadius(10)
            
        })
    }
}
struct ChooseTimeButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Image(systemName: "cart").foregroundColor(Color.black).font(.system(size: 24))
                    .padding(.horizontal, 10.0)
                    .padding(.vertical, 10.0)
                    Text("0")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.trailing, 20.0)
                Divider().frame(width: 2.0).background(Color.black)
                Text("Выбрать время")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)      .padding(.horizontal, 30.0)
                    
            }.background(Color("yellowButtons")).cornerRadius(10)
            
        })
    }
}
struct ChooseDataButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                    Text("Сегодня в 13:30")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.horizontal, 40.0)
                    .padding(.vertical, 15.0)
                Divider().frame(width: 2.0).background(Color.black)
                Text("Далее")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)      .padding(.horizontal, 20.0)
                    
            }.background(Color("yellowButtons")).cornerRadius(10)
            
        })
    }
}
struct CancelButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Text("отменить")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(.horizontal, 80.0)
                    .padding(.vertical, 10.0)
            }.background(Color.gray).cornerRadius(10)
            
        })
    }
}
struct CallButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Image(systemName: "phone.and.waveform.fill").foregroundColor(Color.black)
                    .padding(.leading, 20.0).font(.system(size: 24))
                    Text("Позвонить")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.trailing, 20.0)
                    .padding(.vertical, 10.0)
            }.background(Color("yellowButtons")).cornerRadius(25.0)
            
        })
    }
}
struct CallSmallButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Image(systemName: "phone.and.waveform.fill").foregroundColor(Color.black)
                    .padding(.all, 10.0).font(.system(size: 28))
                    
            }.background(Color("yellowButtons")).cornerRadius(25.0)
            
        })
    }
}
struct NetSmallButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Image(systemName: "network").foregroundColor(Color.black)
                    .padding(.all, 10.0).font(.system(size: 28))
                    
            }.background(Color("yellowButtons")).cornerRadius(25.0)
            
        })
    }
}
struct NetButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Image(systemName: "network").foregroundColor(Color.black)
                    .padding(.leading, 20.0).font(.system(size: 24))
                    Text("Открыть сайт")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.trailing, 20.0)
                    .padding(.vertical, 10.0)
            }.background(Color("yellowButtons")).cornerRadius(25.0)
            
        })
    }
}
struct ServicesButton: View {
    @ObservedObject var blocks = Blocks()
    var body: some View {
        Button(action: {print("сработало")
            blocks.changeBlock()
        }){
            HStack{
            }.frame(width: 124, height:44 )
                .background(Color.white)
                .cornerRadius(10.0)
                .overlay(HStack{
                    Text("услуги")
                        .font(.headline)
                        .fontWeight(.medium)
                        .foregroundColor(self.blocks.change ? Color.white : Color.black)
                        .padding(.horizontal, 10.0)
                        .padding(.vertical, 5.0)
                }.frame(width: 120, height: 40)
                    .background(self.blocks.change ? Color.black : Color.white)
                    .cornerRadius(10.0))
        }
    }
}
struct СontinueButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Text("Продолжить")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.horizontal, 100.0)
                    .padding(.vertical, 20.0)
            }.background(Color("yellowButtons")).cornerRadius(15.0)
            
        })
    }
}
struct ChooseServiceButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Text("Выбрать услугу")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.horizontal, 90.0)
                    .padding(.vertical, 15.0)
            }.background(Color("yellowButtons")).cornerRadius(15.0)
            
        })
    }
}
struct EnterButton: View {
    var body: some View {
        Button(action: {print("сработало")}, label: {
            HStack {
                Text("Войти")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.horizontal, 60.0)
                    .padding(.vertical, 20.0)
            }.background(Color("yellowButtons")).cornerRadius(15.0)
            
        })
    }
}
struct InfoButton: View {
    @ObservedObject var blocks = Blocks()
    var body: some View {
        Button(action:{
            print("информация")
            blocks.changeBlock()
        }){
            HStack {
            }.frame(width: 164.0, height:44.0).background(Color.white).cornerRadius(10).overlay(HStack{
                Text("информация")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(self.blocks.change ? Color.black : Color.white)
                    .padding(.horizontal, 10.0)
                    .padding(.vertical, 5.0)
            }.frame(width: 160.0, height:40.0).background(self.blocks.change ? Color.white : Color.black).cornerRadius(10))
        }
    }
}

struct FeedBack: View {
    @ObservedObject var blocks = Blocks()
    var body: some View {
        Button(action:{
            print("отзывы")
            blocks.changeBlock()
        }){
            HStack {
            }.frame(width: 124.0, height:44.0).background(Color.white).cornerRadius(10).overlay(HStack{
                Text("отзывы")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(self.blocks.change ? Color.black : Color.white)
                    .padding(.horizontal, 10.0)
                    .padding(.vertical, 5.0)
            }.frame(width: 120.0, height:40.0).background(self.blocks.change ? Color.white : Color.black).cornerRadius(10))
        }
    }
}


struct Button1 : View{
    var body: some View{
        Button(action: {
            
        }) {
            HStack{}.frame(width: 124, height: 44).background(Color.white).cornerRadius(10).overlay(HStack{
                Text("кнопка").foregroundColor(Color.white)
            }.frame(width: 120, height: 40).background(Color.black).cornerRadius(10))
        }
        
    }
}

