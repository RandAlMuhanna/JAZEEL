//
//  Onboarding1.swift
//  JAZEEL
//
//  Created by kadi on 27/09/1401 AP.
//

import SwiftUI

struct Onboarding1: View {
    var body: some View {
        NavigationView{
            VStack{
                
                HStack{
                    Spacer()
                    NavigationLink(destination: HomeView()){
                        Text("SKIP")  .foregroundColor(Color("Primary")).font(Font.custom("SF Pro", size: 18))
                            .padding()
                            
                    }
                 
                  
                    
                
                }
                Image("M")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .frame(width: 390)
                    .padding(.top, 110.0)
                
                Text("Wise investement")
                    .font(.largeTitle)
                    .foregroundColor(Color(red: 0.092, green: 0.235, blue: 0.301))
                    .padding(.top, 40.0)
                
                Text("Put your savings to work and make it go further.")
                    .foregroundColor(Color.gray)
                    .padding(.top, 10.0)
                
                Spacer()
                HStack{
                    
                    Image("1")
                        .resizable()
                        .aspectRatio(contentMode:.fit)
                        .frame(width: 60)
                        .padding(.leading,140.0)
                    
                    NavigationLink(destination: Onboarding2()){
                        Text("NEXT")  .foregroundColor(Color("Primary")).font(Font.custom("SF Pro", size: 18))
                            .padding(.leading,86.0)
                            
                    }
                 
                }
                }
        }.accentColor(Color("Primary"))
        }
    }    


struct Onboarding1_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding1()
    }
}
