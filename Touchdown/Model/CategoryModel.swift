//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Vladimir Sukanica on 9.2.21..
//

import Foundation
import SwiftUI

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
