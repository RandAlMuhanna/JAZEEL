//
//  HomeView.swift
//  JAZEEL
//
//  Created by Ashwaq Azan on 17/05/1444 AH.
//

import SwiftUI
import Combine


struct HomeView: View {
    @State private var searchText = ""
    @State private var index = 0
    private var numberOfImages: Int = 3
   

    @State private var currentIndex: Int = 0
    
    private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()


     
    var body: some View {
 
            VStack{
                HStack{
                    HStack{
                        
                    }.padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0)).frame(maxWidth: .infinity)
                    
                    NavigationLink(destination: Profile()) {
                        HStack{
                            Image("person")
                                .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                        }
                                   }
                    
                 
                    
                }.padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0)).frame(maxWidth: .infinity, alignment: .trailing)
                
                
                HStack {
                    Image(systemName: "magnifyingglass")
                    
                    TextField("Search", text: $searchText,
                              onCommit: {
                        print("onCommit")
                    }).font(Font.custom("SF Pro", size: 16)).foregroundColor(.primary)
                    
                    NavigationLink(destination: FilterView()){
                        Image( "filter")
                    }
                  
                }
                .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 8))  .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(.gray, lineWidth: 1)
                )
                .foregroundColor(.secondary)
                
                GeometryReader { geometry in
                    HStack(spacing: 0) {
                        Image("Comp1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width, height: 200)
                            .clipped().cornerRadius(5) .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16))
                        Image("Comp2")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width, height: 200)
                            .clipped()
                            .cornerRadius(5) .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16))
                        Image("Comp4")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width, height: 200)
                            .clipped()
                            .cornerRadius(5) .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16))
                        
                    }
                    .frame(width: geometry.size.width, height: 220, alignment: .leading)
                    .offset(x: CGFloat(self.currentIndex) * (-geometry.size.width-16), y: 0)
                    .animation(.spring())
                    .onReceive(self.timer) { _ in
                        
                        self.currentIndex = (self.currentIndex + 1) % 3
                    }
                } .frame( height: 220, alignment: .leading)
                
                
                
                HStack(spacing: 2) {
                    ForEach((0..<3), id: \.self) { index in
                        Circle()
                            .fill(index == currentIndex ? Color.gray : Color.gray.opacity(0.5))
                            .frame(width: 10, height: 10)
                        
                    }
                }
                
                HStack{
                    Text("Companies").foregroundColor(Color("Primary")).font(Font.custom("SF Pro", size: 21))
                    Spacer()
                    NavigationLink(destination: ViewCompanies()){
                        Text("View All")
                            .foregroundColor(Color("Primary")).font(Font.custom("SF Pro", size: 16))
                   
                    }
                 }
                ScrollView(.horizontal){
                    HStack{
                        ForEach((2..<8), id: \.self) { index in
                            Image("Comp\(index)")
                                .resizable()
                                       
                                .frame(width: 150, height: 150).scaledToFit()
                                .cornerRadius(5) .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16))
                            
                        }
                        
                        
                    }.padding(EdgeInsets(top: 8, leading: 0, bottom: 16, trailing: 0))
                }.frame(height: 174)
       
                
                HStack{
                    Text("Consultants").foregroundColor(Color("Primary")).font(Font.custom("SF Pro", size: 21))
                    Spacer()
                    NavigationLink(destination: ConsultantsView()){
                        Text("View All")
                            .foregroundColor(Color("Primary")).font(Font.custom("SF Pro", size: 16))
                   
                    }
                 }
                
                ScrollView(.horizontal){
                    HStack{
                        ForEach((1..<5), id: \.self) { index in
                            Image("Cons\(index)")
                        
                                .resizable()
                                        .aspectRatio(contentMode: .fill)
                            
                                .frame(width: 150, height: 150)
                                .cornerRadius(5) .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16))
                            
                        }
                        
                        
                    }.padding(EdgeInsets(top: 8, leading: 0, bottom: 16, trailing: 0))
                }.frame(height: 174)
          
                          
            }.navigationTitle("").padding(EdgeInsets(top: 0, leading: 24, bottom: 0, trailing: 24)).frame(maxHeight: .infinity,alignment: .top)
                .navigationBarBackButtonHidden(true)
     
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
