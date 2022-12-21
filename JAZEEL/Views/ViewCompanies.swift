//
//  ViewCompanies.swift
//  JAZEEL
//
//  Created by Rand AlMuhanna on 14/05/1444 AH.
//


import SwiftUI
import UIKit
import Foundation


struct copmaniesView: View{
    
     var modelData: CompaniesDetails

    var body: some View{
        
        NavigationLink(destination: CompanyView(companyExeactData: CompanyDetails(image: "flag1",title: " Sector : Materials | Industry Group ", caption: "Saudi Basic Industries Corporation, known as SABIC, is a Saudi chemical manufacturing company. 70% of SABIC's shares are owned by Saudi Aramco. It is active in petrochemicals, chemicals, industrial polymers, fertilizers, and metals. It is the second largest public company in the Middle East and Saudi Arabia as listed in Tadawul.", founded: "sep 1976", headquarters: "Riyadh", website: "sabic.com", employees: "33,000"))){
            VStack{
                
                
                HStack(spacing: 15){
                    
                    Image(modelData.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 63 , height: 63)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading,spacing: 8, content: {
                        
                        Text(modelData.title)

                            .font(Font.custom("SF Pro", size: 18))
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.01, green: 0.29, blue: 0.35))
                        
                        Text(modelData.caption)
                            .font(Font.custom("SF Pro", size: 14))
                            .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                            .fontWeight(.regular)
                    })
                    .frame(maxWidth: .infinity, alignment:.leading)
                    
//                    Button(action: {}, label: {
//                        Image(systemName: "chevron.right.square.fill")
//                            .foregroundColor(Color(red: 0.01, green: 0.29, blue: 0.35))
//                            .padding()
//
//
//                    })
                }
                .padding()
                .background{
                    
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color(red: 0.97, green: 0.97, blue: 0.97))
                        .overlay{
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray ,lineWidth: 0.5)
                        }
                }
                
            }

        }
        .foregroundColor(Color(red: 0.01, green: 0.29, blue: 0.35))
    }
    
}
struct ViewCompanies: View {
    
    @State var searchCollection = modelData
    @State var searchText = ""
    
    var body: some View {
        
        
    
            VStack {
                
                //List Contain Most pupular Copmanies
                List(searchCollection) { index in
                    copmaniesView(modelData: index)
                    
                    // If you want the lines seperator hidden

                        .listRowSeparator(.hidden)

                    
                }
                // If you want the Background hidden
                .scrollContentBackground(.hidden)



                .navigationTitle("All Companies")
                .navigationBarTitleDisplayMode(.inline)
                
                
                .searchable(text: $searchText , placement: .navigationBarDrawer(displayMode: .always))
                .onChange(of: searchText) { index in
                    if !index.isEmpty {
                        searchCollection = modelData.filter { $0.title.contains(index) }
                    } else {
                        searchCollection = modelData
                    }
                }
                
            }
        
    }
    struct ViewCompanies_Previews: PreviewProvider {
        static var previews: some View {
            ViewCompanies()
        }
    }
}
