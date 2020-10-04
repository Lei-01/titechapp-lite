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
            
            var id: String = ""
            var name: String = ""
            var startTime: String = ""
            var finishTime: String = ""
            var explain: String = ""
            var place: String = ""
            
            for line in lines {
                if line.hasPrefix("UID") {
                    id = line.replacingOccurrences(of: "UID:", with: "")
                } else if line.hasPrefix("SUMMARY") {
                    name = line.replacingOccurrences(of: "SUMMARY:", with: "")
                } else if line.hasPrefix("DTSTART") {
                    startTime = line.replacingOccurrences(of: "DTSTART;TZID=Asia/Tokyo:", with: "")
                } else if line.hasPrefix("DTEND") {
                    finishTime = line.replacingOccurrences(of: "DTEND;TZID=Asia/Tokyo:", with: "")
                } else if line.hasPrefix("DESCRIPTION") {
                    explain = line.replacingOccurrences(of: "DESCRIPTION:", with: "")
                } else if line.hasPrefix("LOCATION") {
                    place = line.replacingOccurrences(of: "LOCATION:", with: "")
                }
            }
            
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
