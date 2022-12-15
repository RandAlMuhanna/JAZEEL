//
//  BookingDetails.swift
//  JAZEEL
//
//  Created by Rand AlMuhanna on 21/05/1444 AH.
//
//


import SwiftUI

    enum SelectShape: Int, CaseIterable{
        case d2
        case d3
        case d4
        case d5
        
        
        var title: String{
            switch self {
            case .d2: return "2 Dec"
            case .d3: return "3 Dec"
            case .d4: return "4 Dec"
            case .d5: return ""
            }
        }
    }

    enum SelectTimeShape: Int, CaseIterable{
        case T1
        case T2
        case T3
        var title: String{
            switch self {
            case .T1: return "3:00 pm"
            case .T2: return "5:00 pm"
            case .T3: return ""
         
            }
        }
    }
struct BookingDetails: View {
        //@State var name: String = "Asem Alruhily"
        @Environment(\.presentationMode) var presentationMode
        @State private var testValue: SelectShape = .d5
        @State private var ValueOfTime: SelectTimeShape = .T3
        @State private var StringDate:String = ""
        @State private var StringTime:String = ""
        var body: some View {
            NavigationView {
           
                VStack(alignment: .center, spacing:5) {
                  
                    Text("When Do you want to meet up with Mr.Asem Alruhily ?")
                        .font(.custom("SF Pro", size: 20))
                        .padding()
                    
                 
                       BookDetails
                       BookInfo
                        .padding()
                    Spacer()
                        .frame(height: 100)
                    
                        BookButton()
                }
                .navigationTitle("Booking Details")
                            .navigationBarTitleDisplayMode(.inline)
                            .toolbar {
                                ToolbarItem(placement: .navigationBarLeading) {
                                    Image(systemName: "chevron.backward")
                                    .foregroundColor(Color("dark blue"))
                                    .onTapGesture {
                                        presentationMode.wrappedValue.dismiss()
                                    }
                                }
                            }
                    }
          
             
            
           
        }
    }

    struct BookingDetails_Previews: PreviewProvider {
        static var previews: some View {
            BookingDetails()
        }
    }
    extension BookingDetails{
        
        var BookDetails: some View {
            VStack(alignment:.center){
            
                                    Text("Select Date: ")
                                        .font(.custom("SF Pro", size: 25))
                                        .padding(.trailing,200)
            
                HStack {
                    ForEach(SelectShape.allCases, id: \.rawValue) {item in
                        HStack {
                            if(item != .d5)
                            {
                               
                                RoundedRectangle(cornerRadius: 5)
                                .stroke(testValue == item ? Color("Shadow2"): Color("Gray"))
                                .overlay(Text(item.title)
                                    .foregroundColor(testValue == item ? Color.white: Color.black))
                                    .background(testValue == item ? Color("Shadow2"): Color("Gray").opacity(0.1) )
                                    .frame(width: 90, height: 90).onTapGesture {
                                        self.StringDate = item.title
                                withAnimation(.easeInOut) {
                                    self.testValue = item
                                }
                            }
                        }
                    
                        }
                    }
                }

            
            
                                    Text("Select Time:")
                                        .font(.custom("SF Pro", size: 25))
                                        .padding(.trailing,200)
            
                HStack {
                    ForEach(SelectTimeShape.allCases, id: \.rawValue) {item in
                        HStack {
                            if(item != .T3){
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(ValueOfTime == item ? Color("Shadow2"): Color("Gray"))
                                .overlay(Text(item.title)
                                    .foregroundColor(ValueOfTime == item ? Color.white: Color.black))
                                .background(ValueOfTime == item ? Color("Shadow2"): Color("Gray").opacity(0.1) )
                                .frame(width: 90, height: 90).onTapGesture {
                                    self.StringTime = item.title
                                    withAnimation(.easeInOut) {
                                        self.ValueOfTime = item
                                    }
                                }
                            
                        }
                        }
                    }
                }
            
                                }.frame(width: 350, height: 300)
                                .background(Color(uiColor: .lightGray).opacity(0.2) ,in: RoundedRectangle(cornerRadius: 5))
                            .padding()
        }
        
        var BookInfo: some View {
            VStack(alignment: .leading){
            Text("Booking Details:")
            .font(.custom("SF Pro", size: 21))
            .padding(.trailing,50)
            Text("You are about to book a consultant session with Mr.Asem Alruhily on \(StringDate), 2022 at \(StringTime)")
                .font(.custom("SF Pro", size: 16))
                .foregroundColor(.secondary)
                .multilineTextAlignment(.leading)
                .padding(.trailing,50)

            }
                
        }
    }
