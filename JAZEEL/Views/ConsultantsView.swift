//
//  ConsultantsView.swift
//  JAZEEL
//
//  Created by Rand AlMuhanna on 16/05/1444 AH.
//

import SwiftUI


struct consultantsView: View{
    
    @State var ConsultantsSheet = false
    
    var ModelData: ConsultantsDetails

    var body: some View{
        
        VStack{
            
            
            HStack(spacing: 15){
                
                Image(ModelData.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100 , height: 100)
                    .clipShape(Circle())
                
                VStack(alignment: .leading,spacing: 8, content: {
                    
                    Text(ModelData.title)
                        .bold()
                        .font(Font.custom("SF Pro", size: 21))
                        .foregroundColor(Color(red: 0.01, green: 0.29, blue: 0.35))
                    
                    Text(ModelData.caption)
                        .font(Font.custom("SF Pro", size: 14))
                        .fontWeight(.regular)
                        .foregroundColor(Color.gray)

                })
                .frame(maxWidth: .infinity, alignment:.leading)
            }
            // Implement sheets
            Button {
                self.ConsultantsSheet = true
                
            } label: {
              Text("Book")
                    .frame(width: 300 , height: 40)

            }.buttonBorderShape(.roundedRectangle(radius: 5))
                .background(Color(red: 0.09, green: 0.24, blue: 0.30))
                .foregroundColor(Color.white)
                .cornerRadius(5)
                    .padding()
                
                
        }.sheet(isPresented: $ConsultantsSheet) {
            
            showSheet(ModelData: ModelData, ConsultantsSheet: $ConsultantsSheet)
            
                .presentationDetents([.medium, .large])
        }
        }
    }
    


struct ConsultantsView: View {
    
            
        @State var searchCollection = ModelData
        @State var searchText = ""
        
        var body: some View {
            
            
           
                VStack {
                    
                    //List Contain Most pupular Copmanies
                    List(searchCollection) { index in
                        consultantsView(ModelData: index)
                    }
                    // If you want the Background hidden
                    
              //  .scrollContentBackground(.hidden)
                    
                }
                .navigationTitle("Consultants")
                 .navigationBarTitleDisplayMode(.inline)
                    
                
                    .searchable(text: $searchText , placement: .navigationBarDrawer(displayMode: .always))
                    .onChange(of: searchText) { index in
                        if !index.isEmpty {
                            searchCollection = ModelData.filter { $0.title.contains(index) }
                        } else {
                            searchCollection = ModelData
                        }
                    }
                
            
        }
}

struct ConsultantsView_Previews: PreviewProvider {
    static var previews: some View {
        ConsultantsView()
    }
}


// Sheet Page

struct showSheet: View {
    
    var ModelData: ConsultantsDetails
    @Binding var ConsultantsSheet: Bool
    
    var body: some View{
        
        
        NavigationView{
            VStack{
                
                Image(ModelData.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 145 , height: 145)
                    .clipShape(Circle())
                    .padding()
                
                
                Text(ModelData.title)
                
                    .font(Font.custom("SF Pro", size: 21))
                    .foregroundColor(Color(red: 0.01, green: 0.29, blue: 0.35))
                
                Text(ModelData.Subs)
                    .font(Font.custom("SF Pro", size: 14))
                    .foregroundColor(Color.gray)
                NavigationLink(destination: BookingDetails()){
                    Text("Continue")
                        .frame(width: 300 , height: 40)
                        .buttonBorderShape(.roundedRectangle(radius: 5))
                        .background(Color(red: 0.09, green: 0.24, blue: 0.30))
                        .foregroundColor(Color.white)
                        .cornerRadius(5)
                        .padding(.top, 35)
                }
           
                
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }
    
}

