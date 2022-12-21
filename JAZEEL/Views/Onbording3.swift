//
//  Onbording3.swift
//  JAZEEL
//
//  Created by kadi on 27/09/1401 AP.
//

import SwiftUI

struct Onbording3: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
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
                Button("PREV"){
                    self.presentationMode.wrappedValue.dismiss()
                }   .padding(.leading,-2.0)
                    .accentColor(/*@START_MENU_TOKEN@*/Color(red: 0.092, green: 0.235, blue: 0.301)/*@END_MENU_TOKEN@*/)
                    .padding()
             
                Image("3")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .frame(width: 60)
                    .padding(.horizontal,60)
                
                NavigationLink(destination: HomeView()){
                    Text("NEXT")  .foregroundColor(Color("Primary")).font(Font.custom("SF Pro", size: 18))
                        .padding(.trailing, 19.0)
                        
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}
        
        
        struct Onbording3_Previews: PreviewProvider {
    static var previews: some View {
        Onbording3()
    }
}
