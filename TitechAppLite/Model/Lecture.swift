//
//  Lecture.swift
//  TitechAppLite
//
//  Created by 柳田 涼華 on 2020/08/30.
//  Copyright © 2020 Lei. All rights reserved.
//

import Foundation

struct Lecture: Decodable, Identifiable {
    let id: Int
    let name: String
    let startTime: String
    let finishTime: String
    let explain: String
    let place: String
}

//struct DateGroupLectures: Decodable, Identifiable {
//    let id: Int
//    let month: Int
//    let day: Int
//    let dayweek: String
//    let lectures: [Lecture]
//}
