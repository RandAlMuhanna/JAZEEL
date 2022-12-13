//
//  CompanyDetails.swift
//  JAZEEL
//
//  Created by Rand AlMuhanna on 19/05/1444 AH.
//

import SwiftUI

struct CompanyDetails: Identifiable {

    var id = UUID()
    var image: String
    var title: String
    var caption: String
    var founded: String
    var headquarters: String
    var website: String
    var employees: String

    
}

var companyExeactData: [CompanyDetails] = [
    
    CompanyDetails(image: "flag1",title: "Trading name: SABIC Sector: Materials | Industry Group: Materials Main Market ", caption: " Saudi Arabia", founded: "sep 1976", headquarters: "Riyadh", website: "https://sldkjfhfjdk", employees: "8765456")
    
]
