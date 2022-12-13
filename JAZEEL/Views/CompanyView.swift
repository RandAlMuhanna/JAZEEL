//
//  CompanyView.swift
//  JAZEEL
//
//  Created by Rand AlMuhanna on 19/05/1444 AH.
//

import SwiftUI


    
struct CompanyView: View{
    
   var companyExeactData: CompanyDetails
    
    @State var currentTab: Int = 0
    
    
    var body: some View{
        
        VStack{
            
            TabBarView(currentTab: self.$currentTab)
            
            TabView(selection: self.$currentTab) {
                
                VStack(alignment: .center){
                    
                    //Flage and Sector details
                    HStack(spacing: 15){
                        
                        Image(companyExeactData.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40 , height: 40)
                            .clipShape(Circle())
                        
                        
                        Text(companyExeactData.title)

                        
                    }
                    .padding()
                    .frame(width: 341,height: .infinity)
                    .background{
                        RoundedRectangle(cornerRadius: 5)
                        .fill(Color(red: 0.97, green: 0.97, blue: 0.97))
                        .frame(width: 350,height: 70)
                    }
                    // Caption About Sabic
                    VStack(spacing:20) {
                        Text(companyExeactData.caption)
                            .frame(width: 341,height: 180)
                       
                    
                        HStack(spacing: 165){

                Text(Image(systemName: "calendar")) + Text("FOUNDED")
                               Text(companyExeactData.founded)
                                              
                                          }
                                          Divider()
                                          HStack(spacing: 165){

                                              Text(Image(systemName: "mappin")) + Text("HEADQUARTERS")

                                              Text(companyExeactData.headquarters)
                                          }
                                          Divider()
                                          HStack(spacing: 165){

                                              Text(Image(systemName: "link.circle")) + Text("WEBSITE")

                                              Text(companyExeactData.website)
                                          }
                                          Divider()
                                          HStack(spacing: 165){

                                              Text(Image(systemName: "person.2")) + Text("EMPLOYEES")

                                              Text(companyExeactData.employees)
                                          }
                        
                    }

                    .background{
                        RoundedRectangle(cornerRadius: 5)
                        .fill(Color(red: 0.97, green: 0.97, blue: 0.97))
                        .frame(width: 350,height: .infinity)
                    }
                    
                }
                
                
                .font(Font.custom("SF Pro", size: 14))
                .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                .fontWeight(.bold)
                .tag(0)
                
                
                Text("2").tag(1)
                .tabViewStyle(.page(indexDisplayMode: .never))
                .background(Color.white)
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
    
    
    struct TabBarView: View {
        @Binding var currentTab: Int
        @Namespace var namespace
        
        var tabBarOptions: [String] = ["Stats", "Chart"]
        
        var body: some View {
            
            VStack {
                
                HStack {
                    Image("Comp2")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 76 , height: 76)
                    
                    VStack {
                        
                        Text("Sabic")
                        
                        
                    }
                    
                    Spacer()
                }.padding(.top,70)
                
                HStack{
                    ForEach(Array(zip(self.tabBarOptions.indices,
                                      self.tabBarOptions)),
                            id: \.0,
                            content: {
                        index, name in
                        TabBarItem(currentTab: self.$currentTab,
                                   namespace: namespace.self,
                                   tabBarItemName: name,
                                   tab: index)
                    })
                }
            }
            .foregroundColor(.white)
            .padding(.horizontal)
            .background(Color(red: 0.09, green: 0.24, blue: 0.30))
            .frame(height: 215)
            
            
        }
    }
    struct TabBarItem: View {
        
        @Binding var currentTab: Int
        let namespace: Namespace.ID
        var tabBarItemName: String
        var tab: Int
        
        var body: some View {
            Button {
                self.currentTab = tab
            } label: {
                VStack {
                    Spacer()
                    Text(tabBarItemName)
                    if currentTab == tab {
                        Color.white
                            .frame(height: 4)
                            .matchedGeometryEffect(id: "underline",
                                                   in: namespace,
                                                   properties: .frame)
                    } else {
                        Color.clear.frame(height: 2)
                    }
                }
                .animation(.spring(), value: self.currentTab)
            }
            .buttonStyle(.plain)
        }
    }
    
    struct CompanyView_Previews: PreviewProvider {
        static var previews: some View {
            CompanyView(companyExeactData: CompanyDetails(image: "flag1",title: " Sector : Materials | Industry Group ", caption: "Saudi Basic Industries Corporation, known as SABIC, is a Saudi chemical manufacturing company. 70% of SABIC's shares are owned by Saudi Aramco. It is active in petrochemicals, chemicals, industrial polymers, fertilizers, and metals. It is the second largest public company in the Middle East and Saudi Arabia as listed in Tadawul.", founded: "sep 1976", headquarters: "Riyadh", website: "https://sldkjfhfjdk", employees: "7678"))
        }
    }
}
