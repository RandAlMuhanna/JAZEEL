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
    
    ConsultantsDetails(image: "Cons1", title: "Khaled", caption: "SABIC Supply a wide range of high-quality flat and long steel products. "),
    
    ConsultantsDetails(image: "Cons2", title: "Reda Alidarous", caption: "Licensed financial advisor in Saudi Arabia (License 579046), banking and financial experience exceeding 25 years, master's degree in financial sciences."),
    
    ConsultantsDetails(image: "Cons3", title: "Mohammed Alkuwaiz", caption:  "Bachelor's degree in Administrative Sciences with honors from the Law Department at King Saud University in 1998."),
    ConsultantsDetails(image: "Cons4", title: "Asem Alruhily", caption: "He a Liabilities Product Development Manager at Bank Albilad, managing wealth for major clients.."),
    
   
]
