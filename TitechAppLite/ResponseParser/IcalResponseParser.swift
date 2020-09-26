//
//  IcalResponseParser.swift
//  TitechAppLite
//
//  Created by 柳田 涼華 on 2020/09/06.
//  Copyright © 2020 Lei. All rights reserved.
//

import Foundation

struct IcalResponseParser {
    static func parse(data: Data) -> [IcalLecture] {
        let icalString = String(data: data, encoding: .utf8) ?? ""
        let setLectures = icalString.components(separatedBy: "\nBEGIN:VEVENT")
        var result: [IcalLecture] = []
        for setLecture in setLectures {
            let lines = setLecture.components(separatedBy: "\n")
            if lines[0] == "BEGIN:VCALENDAR" {
                continue
            }
            if lines.count < 8 {
                continue
            }
            
            let id = lines[7].replacingOccurrences(of: "UID:", with: "")
            let name = lines[6].replacingOccurrences(of: "SUMMARY:", with: "")
            let startTime = lines[2].replacingOccurrences(of: "DTSTART;TZID=Asia/Tokyo:", with: "")
            let finishTime = lines[3].replacingOccurrences(of: "DTEND;TZID=Asia/Tokyo:", with: "")
            let explain = lines[5].replacingOccurrences(of: "DESCRIPTION:", with: "")
            let place = lines[4].replacingOccurrences(of: "LOCATION:", with: "")
            
            let dateFormatter = DateFormatter()
            dateFormatter.locale = Locale(identifier: "en_US_POSIX")
            dateFormatter.timeZone = TimeZone(identifier: "Asia/Tokyo")
            dateFormatter.dateFormat = "yyyyMMdd'T'HHmmss"
            guard let startDate = dateFormatter.date(from: startTime) else {
                continue
            }
            guard let finishDate = dateFormatter.date(from: finishTime) else {
                continue
            }
            
            result += [IcalLecture(id: id, name: name, startDate: startDate, finishDate: finishDate, explain: explain, place: place)]
            
        }
        
        return result
        
    }
}
