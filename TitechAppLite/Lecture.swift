//
//  Lecture.swift
//  TitechAppLite
//
//  Created by 柳田 涼華 on 2020/08/16.
//  Copyright © 2020 Lei. All rights reserved.
//

import Foundation

struct Lecture: Decodable, Identifiable {
    let id: Int
    let name: String
    let starttime: String
    let endtime: String
    let content: String
    let place: String
}
