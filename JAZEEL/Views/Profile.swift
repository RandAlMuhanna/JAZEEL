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
            
            
            HStack{
                Image(systemName: "chevron.backward")
                    .foregroundColor(Color(red: 0.092, green: 0.235, blue: 0.301))
                
                Spacer()
                
                
                Button("Edit") {
                    
                }
                .accentColor(/*@START_MENU_TOKEN@*/Color(red: 0.092, green: 0.235, blue: 0.301)/*@END_MENU_TOKEN@*/)
                
            }
            
            .padding()
            
            
            Image("man")
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width: 150)
                .padding(.top, 40.0);
            
            
            Text("Abdullah")
                .foregroundColor(Color(red: 0.092, green: 0.235, blue: 0.301))
            
            Text("+966564723189")
                .foregroundColor(Color(red: 0.092, green: 0.235, blue: 0.301))
            
            HStack{
                Image(systemName: "list.bullet.rectangle")
                    .foregroundColor(Color(red: 0.092, green: 0.235, blue: 0.301))
                    .padding(.top, 30.0)
                Text("My Session")
                    .foregroundColor(Color(red: 0.09, green: 0.235, blue: 0.301))
                    .padding(.top, 30.0)
                
                Spacer()
                
            }
            HStack{
                Image(systemName: "dollarsign.square")
                    .foregroundColor(Color(red: 0.096, green: 0.239, blue: 0.305))
                Text("Manage Subscription")
                    .foregroundColor(Color(red: 0.092, green: 0.235, blue: 0.301))
                Spacer()
            }
            HStack{
                Image(systemName: "rectangle.portrait.and.arrow.forward")
                    .foregroundColor(Color(red: 0.105, green: 0.246, blue: 0.312))
                Text("Sign Out")
                    .foregroundColor(Color(red: 0.092, green: 0.235, blue: 0.301))
                Spacer()
                
            }
            HStack{
                Image(systemName: "minus.square")
                    .foregroundColor(Color(red: 0.165, green: 0.297, blue: 0.359))
                Text("Delete Account")
                    .foregroundColor(Color(red: 0.092, green: 0.235, blue: 0.301))
                Spacer()
                
            }
            Spacer()
            
        }
        .padding()
    }
}
struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
