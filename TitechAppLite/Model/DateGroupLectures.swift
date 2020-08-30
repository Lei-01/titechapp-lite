//
//  DateGroupLectures.swift
//  TitechAppLite
//
//  Created by 柳田 涼華 on 2020/08/30.
//  Copyright © 2020 Lei. All rights reserved.
//

import Foundation

struct DateGroupLectures: Decodable, Identifiable {
    let id: Int
    let month: Int
    let day: Int
    let dayWeek: String
    let lectures: [Lecture]
}
