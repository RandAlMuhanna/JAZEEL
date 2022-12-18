//
//  Onboarding2.swift
//  JAZEEL
//
//  Created by kadi on 27/09/1401 AP.
//

import SwiftUI

struct Onboarding2: View {
    var body: some View {
        VStack{
            
            HStack{
                Spacer()
                Button("SKIP") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .accentColor(/*@START_MENU_TOKEN@*/Color(red: 0.092, green: 0.235, blue: 0.301)/*@END_MENU_TOKEN@*/)
                .padding()
                
                
                
            }
            Image("MM")
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width: 390)
                .padding(.top, 110.0)
            Text("Experts Guidance")
                .font(.largeTitle)
                .foregroundColor(Color(red: 0.092, green: 0.235, blue: 0.301))
                .padding(40)
            
            Text("Get experts guidance on Investement Solutions.")
                .foregroundColor(Color.gray)
                .padding(.bottom, 10.0)
            
            Spacer()
            HStack{
                Text("PREV")
                    .padding(.leading,-2.0)
                    .accentColor(/*@START_MENU_TOKEN@*/Color(red: 0.092, green: 0.235, blue: 0.301)/*@END_MENU_TOKEN@*/)
                    .padding()
                
                Image("2")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .frame(width: 60)
                    .padding(.horizontal,70.0)
                
                
                Button("NEXT") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.padding(.trailing, 19.0)
                    .accentColor(/*@START_MENU_TOKEN@*/Color(red: 0.092, green: 0.235, blue: 0.301)/*@END_MENU_TOKEN@*/)
            }
        }
    }
}
    

struct Onboarding2_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding2()
    }
}
