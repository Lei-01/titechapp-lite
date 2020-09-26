//
//  IcalLecture.swift
//  TitechAppLite
//
//  Created by 柳田 涼華 on 2020/09/26.
//  Copyright © 2020 Lei. All rights reserved.
//

import Foundation

struct IcalLecture: Decodable, Identifiable {
    let id: String
    let name: String
    let startDate: Date
    let finishDate: Date
    let explain: String
    let place: String
}
