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
                VStack{
                    VerifyButton()
                    SeachDataButton()
                    OpenButton()
                    ChangePhotoButton()
                    SavePhotoButton()
                    ChangeSaveButton()
                    AddButton()
                    AddCarButton()
                    ApplyButton()
                    TrashSmallButton()
                    
                }
                VStack{
                    NotButton()
                    PhotoMadeButton()
                    selectAlbButton()
                    ContinueNotPhotoButton()
                    ReadyButton()
                    GoGoButton()
                    SiteButton()
                    NumTelButton()
                    MailButton()
                    StayButton()
                    
                }
                VStack{
                    EscButton()
                    }
                }
                
                Spacer()
            }
        }.ignoresSafeArea(.all).background(Color("greyColor"))
    }
}


struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
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









