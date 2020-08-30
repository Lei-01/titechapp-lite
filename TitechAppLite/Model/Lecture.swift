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
    let starttime: String
    let finishtime: String
    let explain: String
    let place: String
}
