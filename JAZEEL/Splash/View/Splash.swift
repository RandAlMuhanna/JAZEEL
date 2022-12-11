//
//  Splash.swift
//  JAZEEL
//
//  Created by Ashwaq Azan on 17/05/1444 AH.
//

import SwiftUI

struct Splash: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if(isActive){
          HomeView()

        }else{
            VStack{
                
                VStack{  Spacer()
                    Image("jazeel_logo").resizable()
                        .frame(width: 150, height: 240)
                    Spacer()
                    Text("Your door to the investement ").foregroundColor(.white).font(Font.custom("SF Pro", size: 16))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
                
            }.frame(minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 0,
                    maxHeight: .infinity,
                    alignment: .center).background(LinearGradient(gradient: Gradient(colors: [Color("Shadow1"), Color("Shadow2")]), startPoint: .topLeading, endPoint: .bottomTrailing)).onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation{
                        self.isActive = true
                    }
                
                }
            }
        }
  
    }
}

struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        Splash()
    }
}
