//
//  Models.swift
//  DepressionApp1
//
//  Created by Ashok Nambisan on 10/30/22.
//

import Foundation
import SwiftUI
struct DataModels: Decodable {
    let error: String
    let message: String
    let data: [PostModel]
}
struct PostModel: Decodable{
    let id: Int
    let title: String
    let post: String
}
