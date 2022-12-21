//
//  Profile.swift
//  JAZEEL
//
//  Created by kadi on 27/09/1401 AP.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack {
            
            
     
            
            
            Image("man")
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width: 150)
                .padding(.top, 40.0);
            
            HStack{
              
                VStack{
                    Text("Abdullah")
                        .foregroundColor(Color(red: 0.092, green: 0.235, blue: 0.301))
                    
              
                    
                    
                }
                
            
                
                NavigationLink(destination: Edit_Profile()){
                    Image(systemName: "pencil").foregroundColor(Color("Primary")).font(Font.custom("SF Pro", size: 16))
                     
                }
             
                
            }
            
    
            
            Text("+966564723189")
                .foregroundColor(Color(red: 0.092, green: 0.235, blue: 0.301))
            NavigationLink(destination: MySessions()){
                HStack{
                    Image(systemName: "list.bullet.rectangle")
                        .foregroundColor(Color(red: 0.092, green: 0.235, blue: 0.301))
                        .padding(.top, 30.0)
                    
                    
                    Text("My Session")
                        .foregroundColor(Color(red: 0.09, green: 0.235, blue: 0.301))
                        .padding(.top, 30.0)
                    
                    Spacer()
                    
                }.padding(.bottom, 3)
                
            } 
         
            HStack{
                Image(systemName: "dollarsign.square")
                    .foregroundColor(Color(red: 0.096, green: 0.239, blue: 0.305))
                Text("Manage Subscription")
                    .foregroundColor(Color(red: 0.092, green: 0.235, blue: 0.301))
                Spacer()
            }.padding(.bottom, 3)
            HStack{
                Image(systemName: "rectangle.portrait.and.arrow.forward")
                    .foregroundColor(Color(red: 0.105, green: 0.246, blue: 0.312))
                Text("Sign Out")
                    .foregroundColor(Color(red: 0.092, green: 0.235, blue: 0.301))
                Spacer()
                
            }.padding(.bottom, 3)
            HStack{
                Image(systemName: "minus.square")
                    .foregroundColor(Color(red: 0.165, green: 0.297, blue: 0.359))
                Text("Delete Account")
                    .foregroundColor(Color(red: 0.092, green: 0.235, blue: 0.301))
                Spacer()
                
            }
            Spacer()
            
        }.navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack {
                    Text("Profile")
                        .bold()
                        .foregroundColor(Color("Primary"))
                }}}
        .padding()
    }
}
struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
