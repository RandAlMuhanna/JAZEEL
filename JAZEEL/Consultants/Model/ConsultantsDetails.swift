//
//  ConsultantsDetails.swift
//  JAZEEL
//
//  Created by Rand AlMuhanna on 16/05/1444 AH.
//

import SwiftUI

struct ConsultantsDetails: Identifiable {
    
    var id = UUID()
    var image: String
    var title: String
    var caption: String
}

var ModelData: [ConsultantsDetails] = [
    
    ConsultantsDetails(image: "Cons", title: "Khaled", caption: "SABIC Supply a wide range of high-quality flat and long steel products. "),
    
    ConsultantsDetails(image: "Cons2", title: "Reda Alidarous", caption: "Saudi Aramco operates the world's largest single hydrocarbon network, the Master Gas System."),
    
    ConsultantsDetails(image: "Cons3", title: "Mohammed Alkuwaiz", caption:  "Saudi Arabian bank and the world's largest Islamic bank by capital based on 2015 data."),
    ConsultantsDetails(image: "Cons4", title: "Asem Alruhily", caption: "Saudi digital enabler of telecommunications services in the Kingdom of Saudi Arabia, and among the operators in the Middle East."),
    
   
]
