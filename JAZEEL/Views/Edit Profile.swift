//
//  Edit Profile.swift
//  JAZEEL
//
//  Created by kadi on 27/09/1401 AP.
//

import SwiftUI

struct Edit_Profile: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            
            HStack{
                
                
                Button("Cancel") {
                    self.presentationMode.wrappedValue.dismiss()
                }
                .accentColor(/*@START_MENU_TOKEN@*/Color(red: 0.092, green: 0.235, blue: 0.301)/*@END_MENU_TOKEN@*/)
                
                Spacer()
                Button("Save") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .accentColor(/*@START_MENU_TOKEN@*/Color(red: 0.092, green: 0.235, blue: 0.301)/*@END_MENU_TOKEN@*/)
                
                
            }
            
            
            Image(systemName: "person.circle")                .resizable()
                .aspectRatio(contentMode:.fit)
                .foregroundColor(Color(red: 0.092, green: 0.235, blue: 0.301))
                .frame(width: 100)
                .padding(.top, 70.0)
            Button("Change Photo") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .accentColor(/*@START_MENU_TOKEN@*/Color(red: 0.092, green: 0.235, blue: 0.301)/*@END_MENU_TOKEN@*/)
            
            .padding(.top, 15.0)

            HStack{
                Text("Name:")
                    .padding(.top, 50.0)                    .foregroundColor(Color(red: 0.092, green: 0.235, blue: 0.301))
                
                TextField("Abdullah", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding(.top, 50.0)                   }
            HStack{
                Text("Phone number:")
                    .foregroundColor(Color(red: 0.092, green: 0.235, blue: 0.301))
                TextField("+966564723189", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                
                
            }
        Spacer()
        }
        .navigationBarBackButtonHidden(true)
        .padding()
     
   
    }    }

struct Edit_Profile_Previews: PreviewProvider {
    static var previews: some View {
        Edit_Profile()
    }
}
