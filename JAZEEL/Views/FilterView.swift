//
//  FilterView.swift
//  JAZEEL
//
//  Created by Rand AlMuhanna on 23/05/1444 AH.
//

import SwiftUI



struct FilterView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    class ValueModel: Identifiable, ObservableObject, Equatable {
        
        var id = UUID()
        var value: String
        @Published var isSelected: Bool
        
        init(value: String, isSelected: Bool) {
            self.value = value
            self.isSelected = isSelected
        }
        
        static func == (lhs: ValueModel, rhs: ValueModel) -> Bool {
            lhs.id == rhs.id
        }
    }
    
    struct RadioButtonSection: View {
        
        let title: String
        var options: [ValueModel]
        
        var body: some View {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                
                ForEach(options) { option in
                    RadioButton(value: option) {
                        handleOptionSelection(option: option)
                    }
                    .padding(.leading, 10)
                }
            }
        }
        
        func handleOptionSelection(option: ValueModel) {
            options.forEach { localOption in
                if localOption == option {
                    localOption.isSelected = true
                } else {
                    localOption.isSelected = false
                }
            }
        }
    }
    
    struct RadioButton: View {
        
        @ObservedObject var value: ValueModel
        var onTap: () -> Void
        
        var body: some View {
            Button {
                onTap()
            } label: {
                HStack {
                    Circle()
                        .stroke()
                        .frame(width: 25, height: 25, alignment: .center)
                        .overlay {
                            if value.isSelected {
                                Circle()
                                    .fill()
                                    .frame(width: 12, height: 12, alignment: .center)
                            }
                        }
                    
                    Text(value.value)
                }
            }
            .tint(.black)
        }
    }
    
    var incomeOptions = [
        
        ValueModel(value: "< 72,000", isSelected: true),
        ValueModel(value: "72,000 - 120,000", isSelected: false),
        ValueModel(value: "> 120,000", isSelected: false)
    ]
    var ageOptions = [
        ValueModel(value: "16 - 24", isSelected: true),
        ValueModel(value: "25 - 45", isSelected: false),
        ValueModel(value: "> 45", isSelected: false)
    ]
    var investOptions = [
        ValueModel(value: "Short term (1-2 years)", isSelected: true),
        ValueModel(value: "Long term (> 5 years)", isSelected: false)
        
    ]
    
    
    
    var body: some View {
      
            ScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .leading, spacing: 30) {
                    Text("Fill the following fields to customize the investment companies and consultant")
                        .multilineTextAlignment(.leading)
                        .font(Font.custom("SF Pro", size: 16))
                    
                        
                    
                    RadioButtonSection(title: "Total yearly income",options: incomeOptions)
                        .font(Font.custom("SF Pro", size: 16))
                        .foregroundColor(Color(red: 0.09, green: 0.24, blue: 0.30))
                        
                    RadioButtonSection(title: "Age", options: ageOptions)
                        .font(Font.custom("SF Pro", size: 16))
                        .foregroundColor(Color(red: 0.09, green: 0.24, blue: 0.30))
                    RadioButtonSection(title: "Your investment target", options: investOptions)
                        .font(Font.custom("SF Pro", size: 16))
                        .foregroundColor(Color(red: 0.09, green: 0.24, blue: 0.30))
                    
                    
                    interestPickerView
                    
                    bottomButtonsSection
                    
                    Spacer(minLength: 0)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Text("Filter")
                            .bold()
                            .foregroundColor(Color("Primary"))
                    }}}
            .padding()
            .foregroundColor(Color(red: 0.09, green: 0.24, blue: 0.30))
            
     
        
    }
    
    @ViewBuilder
    private var interestPickerView: some View {
        VStack(alignment: .leading) {
            Text("Select your interest sector")
               // .font(.system(size: 20, weight: .bold, design: .rounded))
                .font(Font.custom("SF Pro", size: 18))
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.09, green: 0.24, blue: 0.30))
            
            RoundedRectangle(cornerRadius: 8)
                .stroke()
                .frame(height: 50)
                .foregroundColor(Color(red: 0.09, green: 0.24, blue: 0.30))
                .overlay {
                    HStack {
                        Text("------------")
                        
                        Spacer(minLength: 0)
                        
                        Image(systemName: "chevron.down")
                    }
                    .padding(.horizontal)
                }
        }
    }
    
    @ViewBuilder
    private var bottomButtonsSection: some View {
        
        HStack(spacing:20){
            
            Button {
                // perform action
            } label: {
                Text("Filter")
                    .font(Font.custom("SF Pro", size: 18))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.horizontal, 50)
                    .padding(.vertical, 13)
                    .background(RoundedRectangle(cornerRadius: 5).stroke()
                    .background(Color(red: 0.09, green: 0.24, blue: 0.30))
                       // .foregroundColor(.black))
                    .foregroundColor(Color(red: 0.09, green: 0.24, blue: 0.30))
            )}

                   
                   Spacer(minLength: 0)
                   
                   Button {
                       self.presentationMode.wrappedValue.dismiss()
                   } label: {
                       Text("Cancel")
                           .font(Font.custom("SF Pro", size: 18))
                           .fontWeight(.bold)
                           .foregroundColor(.red)
                           .padding(.horizontal, 40)
                           .padding(.vertical, 13)
                           .background(RoundedRectangle(cornerRadius: 5).stroke()
                              // .foregroundColor(.black))
                           .foregroundColor(Color(red: 0.09, green: 0.24, blue: 0.30))
                   )}
               }
//        HStack(spacing: 50) {
//            Button {
//                // perform action
//            } label: {
//                Text("Filter")
//                    .font(Font.custom("SF Pro", size: 18))
//                    .fontWeight(.bold)
//                    .foregroundColor(.white)
//                    .padding(.horizontal, 50)
//                    .padding(.vertical, 13)
//                    .background(Color(red: 0.09, green: 0.24, blue: 0.30))
//                   // .foregroundColor(Color(red: 0.09, green: 0.24, blue: 0.30))
//                    .background(Color.black)
//                    .cornerRadius(5)
//                    .background(RoundedRectangle(cornerRadius: 5).stroke())
//
//            }
//
//            //Spacer(minLength: 0)
//
////            Button {
////                // perform action
////            } label: {
////                Text("Cancel")
////                    .font(Font.custom("SF Pro", size: 18))
////                    .fontWeight(.bold)
////                    .foregroundColor(.red)
////                    .padding(.horizontal, 50)
////                    .padding(.vertical, 13)
////                    .background(RoundedRectangle(cornerRadius: 5).stroke()
////                       // .foregroundColor(.black))
////                    .foregroundColor(Color(red: 0.09, green: 0.24, blue: 0.30))
////            )}
//
//            Button {
//                // perform action
//            } label: {
//                Text("Cancle")
//                    .font(Font.custom("SF Pro", size: 18))
//                    .fontWeight(.bold)
//                    .foregroundColor(.red)
//                    .padding(.horizontal, 50)
//                    .padding(.vertical, 13)
//                    .background(Color(red: 0.09, green: 0.24, blue: 0.30))
//                   // .foregroundColor(Color(red: 0.09, green: 0.24, blue: 0.30))
//
//                    .background(Color.black)
//                    .cornerRadius(5)
//                    .background(RoundedRectangle(cornerRadius: 5).stroke())
//
//            }
//        }
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
