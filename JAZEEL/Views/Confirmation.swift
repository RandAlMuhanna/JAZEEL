//
//  Confirmation.swift
//  JAZEEL
//
//  Created by Rand AlMuhanna on 21/05/1444 AH.
//

import SwiftUI

struct Confirmation: View {
        //@AppStorage("a") var a: Bool = false
        var body: some View {
            VStack{
                
                Image(systemName: "checkmark.seal.fill" )
                    .font(.system(size: 140))
                    .foregroundColor(Color("Shadow2"))
                    .padding(.top,90)
                
                Text("Session Booked Successfully ")//confirmDetailsVar.title1

                    .foregroundColor(Color("Shadow2"))
                    .font(.system(size: 21))
                    .bold()
                    
                
                Text("An invitation link is sent to your phone number  ")//confirmDetailsVar.title2
                    .foregroundColor(Color.gray)
                    .padding(.top,20)
                    
                
                                
      
            }.navigationBarBackButtonHidden(true)
            
        }
        }

struct Confirmation_Previews: PreviewProvider {
    static var previews: some View {
        Confirmation()
    }
}
