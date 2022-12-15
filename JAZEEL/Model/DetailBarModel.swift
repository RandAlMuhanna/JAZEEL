//
//  DetailBarModel.swift
//  JAZEEL
//
//  Created by Rand AlMuhanna on 21/05/1444 AH.
//

import Foundation

enum DetailBarModel: Int, CaseIterable{
    case UpComing
    case Previous
    
    var title: String{
        switch self {
        case .UpComing: return "Upcoming Sessions"
        case .Previous: return "Previous Sessions"
        }
    }
    
}
