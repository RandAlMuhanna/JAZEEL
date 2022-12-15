//
//  MySessions.swift
//  JAZEEL
//
//  Created by Rand AlMuhanna on 21/05/1444 AH.
//

import SwiftUI

struct MySessions: View {
    @State private var testValue: DetailBarModel = .UpComing
    @Namespace var anim
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView{
            VStack(spacing: 0) {
                SessionBar
                    .padding(.top,20)
                    .padding(.all)
                
                if testValue == .UpComing {
                    ScrollView {
                        VStack(spacing: 0) {
                            ShowValue()
                           
                        }
                        .padding()
                    }
                }
                
                else {
                    Spacer()
                    Text("No Previous Sessions")
                        .foregroundColor(.gray)
                    Spacer()
                }
            }
            
            .navigationTitle("My Sessions")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image(systemName: "chevron.backward")
                            .foregroundColor(Color("Shadow2"))
                            .onTapGesture {
                                presentationMode.wrappedValue.dismiss()
                            }
                    }
                }
            
        }
    
}
        
    }
   

struct ShowValue: View{
    var body: some View{
        
        VStack(alignment: .leading) {
            
            HStack(spacing: 10){
                Image("Cons4")
                    .resizable()
                    .frame(width:50 ,height: 50)
                    .clipShape(Circle())
                .background(
                 RoundedRectangle(cornerRadius: 100).stroke(Color.gray))
                .background(
                 RoundedRectangle(cornerRadius: 100).fill(Color.white))
                Text("Asem Alruhily ")
                    .foregroundColor(Color(uiColor:.darkGray))
                    .font(.system(size: 20, weight: .regular, design: .none))
            }.padding(.leading)
            
            Divider()
            
            HStack{
                Image(systemName: "calendar")
                    .resizable()
                    .foregroundColor(Color(uiColor:.darkGray))
                    .frame(width:20 ,height: 20)
                Text("Sunday, 04 Dec / 3:00 pm  ")
                    .foregroundColor(Color(uiColor:.darkGray))
                    .font(.system(size: 10, weight: .semibold, design: .none))
            }.padding(.leading)
            
        }.frame(width: 350, height: 125)
        .background(Color(uiColor: .lightGray).opacity(0.2) ,in: RoundedRectangle(cornerRadius: 5))
            .padding()
             
    }
    
    
}

struct MySessions_Previews: PreviewProvider {
    static var previews: some View {
        MySessions()
    }
}

extension MySessions {
    
    var SessionBar: some View {
        
        HStack{
            ForEach(DetailBarModel.allCases, id: \.rawValue) {item in
                VStack{
                    Text(item.title)
                        .font(.custom("SF Pro", size: 16))
                        .fontWeight(testValue == item ? .regular: .regular)
                        .foregroundColor(testValue == item ? Color("Shadow2"): .gray)
                    
                    if testValue == item{
                        Capsule()
                            .foregroundColor(Color("Shadow2"))
                            .frame(height:3)
                            .matchedGeometryEffect(id: "filter", in: anim)
                    }
                    else{
                        Capsule()
                            .foregroundColor(Color(.clear))
                            .frame(height:3)
                    }
                }.onTapGesture {
                    withAnimation(.easeInOut) {
                        self.testValue = item
                    }
                }
            }
        }.overlay(Divider().offset(x:0 , y:16))
        
        
    }
}
