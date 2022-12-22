//
//  BookButton.swift
//  JAZEEL
//
//  Created by Rand AlMuhanna on 21/05/1444 AH.
//


import SwiftUI

struct BookButton: View {
    var body: some View {
            NavigationLink(destination: Confirmation()
               , label: {
                    Text("Book")
                        .foregroundColor(.white)
                        .font(.title2)
                        .bold()
                        .fontWeight(.regular)
                        .padding(.horizontal,20)
                        .padding(.vertical,21)
                        .lineLimit(1)
                        .frame(width: 300, height: 44)
                    
                        .background(
                            RoundedRectangle(cornerRadius:5)
                                .fill(Color("Shadow2"))
                        )
                    
                    
                    
                }
              
            ) .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
}

struct BookButton_Previews: PreviewProvider {
    static var previews: some View {
        BookButton()
    }
}

