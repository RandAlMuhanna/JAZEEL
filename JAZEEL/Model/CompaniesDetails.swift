//
//  companiesDeatails.swift
//  JAZEEL
//
//  Created by Rand AlMuhanna on 13/05/1444 AH.
//
import Foundation

import UIKit



struct CompaniesDetails: Identifiable {
    
    var id = UUID()
    var image: String
    var title: String
    var caption: String
  
}

var modelData: [CompaniesDetails] = [
    
    CompaniesDetails(image: "Comp2", title: "Sabic", caption: "SABIC Supply a wide range of high-quality flat and long steel products. "),
    
    CompaniesDetails(image: "Comp5", title: "Saudi Aramco", caption: "Saudi Aramco operates the world's largest single hydrocarbon network, the Master Gas System."),
    
    CompaniesDetails(image: "Comp3", title: "AlRajhi Bank", caption:  "Saudi Arabian bank and the world's largest Islamic bank by capital based on 2015 data."),
    CompaniesDetails(image: "Comp4", title: "STC", caption: "Saudi digital enabler of telecommunications services in the Kingdom of Saudi Arabia."),
    
    CompaniesDetails(image: "Comp6", title: "Almarai", caption: "Specializes in food and beverage manufacturing and distribution."),
    
    CompaniesDetails(image: "Comp7", title: "Dar Alarkan", caption: " Saudi Arabian property development company. It is the largest developer by market value in Saudi Arabia.")
]
