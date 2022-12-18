//
//  Onbording3.swift
//  JAZEEL
//
//  Created by kadi on 27/09/1401 AP.
//

import SwiftUI

struct Onbording3: View {
    var body: some View {
        VStack{
            
       
            Image("MMM")
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width: 390)
                .padding(.top, 100.0)
          
            
            Text("Biggest companies")
                .font(.largeTitle)
                .foregroundColor(Color(red: 0.092, green: 0.235, blue: 0.301))
                .padding(40)
            Text("Biggest Local companies in one place.")
                .foregroundColor(Color.gray)
                .padding(.bottom, 10.0)
                .accentColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
              
            Spacer()
            HStack{
                Button("PREV") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .accentColor(/*@START_MENU_TOKEN@*/Color(red: 0.092, green: 0.235, blue: 0.301)/*@END_MENU_TOKEN@*/)
                .padding()
                Image("3")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .frame(width: 60)
                    .padding(.horizontal,60)
                
                Button("NEXT") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .accentColor(/*@START_MENU_TOKEN@*/Color(red: 0.092, green: 0.235, blue: 0.301)/*@END_MENU_TOKEN@*/)
                .padding()
            }
        }
    }
}
        
        
        struct Onbording3_Previews: PreviewProvider {
    static var previews: some View {
        Onbording3()
    }
}
