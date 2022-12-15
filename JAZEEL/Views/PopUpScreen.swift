//
//  PopUpScreen.swift
//  JAZEEL
//
//  Created by Ashwaq Azan on 20/05/1444 AH.
//

import SwiftUI

struct PopUpScreen: View {
    @State var showPopup: Bool = false
    var body: some View {
        NavigationView{
            Button("Show Pop Up"){
                withAnimation{ showPopup.toggle()}
               
            }
            .popupNavigationView(horizontalPadding: 100,show: $showPopup) {
                VStack{
                    Text("Are You Sure You Want to Delete Your Account?")
                        .foregroundColor(Color("Primary")) .font(Font.custom("SF Pro", size: 16))
                    Spacer()
                            .frame(height: 50)
                    HStack{
                        Button("Cancel"){ withAnimation{ showPopup.toggle()}}
                            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16)).foregroundColor(Color("Primary")) .overlay{
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.gray ,lineWidth: 0.5)
                            } .cornerRadius(5)
                        Spacer()
                                .frame(width: 50)
                        Button("Delete"){
                            withAnimation{ showPopup.toggle()}
                        }.padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16)).background(Color("Primary")).foregroundColor(.white) .cornerRadius(5)
                    }
                }
            }
        }}
}

extension View{
    func popupNavigationView<Content: View>(horizontalPadding: CGFloat = 120, show: Binding<Bool>, @ViewBuilder content: @escaping ()->Content)->some View{
        
        return self
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment:.center)
         
            .overlay {
            if show.wrappedValue{
                GeometryReader{proxy in
                    Color.primary.opacity(0.15).ignoresSafeArea()
                    
                    let size = proxy.size
                    NavigationView{
                        content()
                    }
                    .frame(width: size.width - horizontalPadding, height: size.height / 4, alignment: .center)
                        .cornerRadius(10)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment:.center)

                    
                }
            }
        }
        
    }
}

struct PopUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        PopUpScreen()
    }
}
