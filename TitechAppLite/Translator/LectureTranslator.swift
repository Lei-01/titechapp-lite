//
//  LectureTranslator.swift
//  TitechAppLite
//
//  Created by 柳田 涼華 on 2020/09/26.
//  Copyright © 2020 Lei. All rights reserved.
//

import Foundation

struct LectureTranslator {
    static func translate(lectures: [IcalLecture]) -> [DateGroupLectures] {
        var result: [Date: [Lecture]] = [:]
        for lecture in lectures {
            let dateFormatter2 = DateFormatter()
            dateFormatter2.locale = Locale(identifier: "en_US_POSIX")
            dateFormatter2.timeZone = TimeZone(identifier: "Asia/Tokyo")
            dateFormatter2.dateFormat = "HH:mm"
            let startTime = dateFormatter2.string(from: lecture.startDate)
            let finishTime = dateFormatter2.string(from: lecture.finishDate)
            
            if let l = result[lecture.startDate.beginningOfDay()] {
                let newLectures = l + [Lecture(id: lecture.id, name: lecture.name, startTime: startTime, finishTime: finishTime, explain: lecture.explain, place: lecture.place)]
                result[lecture.startDate.beginningOfDay()] = newLectures
            } else {
                
                result[lecture.startDate.beginningOfDay()] = [Lecture(id: lecture.id, name: lecture.name, startTime: startTime, finishTime: finishTime, explain: lecture.explain, place: lecture.place)]
            }
        }
        var dates: [DateGroupLectures] = []
        let today = Date().beginningOfDay()
        
        let dateFormatter3 = DateFormatter()
        dateFormatter3.locale = Locale(identifier: "ja_JP")
        dateFormatter3.timeZone = TimeZone(identifier: "Asia/Tokyo")
        dateFormatter3.dateFormat = "M'月'd'日 'EEE'曜日'"
        
        for i in 0...120 {
            let day = today.addingTimeInterval(TimeInterval(24*3600*i))
            let days = dateFormatter3.string(from: day)
            dates += [DateGroupLectures(id: UUID().uuidString, day: days, lectures: result[day] ?? [])]
        }
        return dates
    }
}

extension Date {
    func beginningOfDay() -> Date {
        let calendar = Calendar(identifier: .gregorian)
        return calendar.startOfDay(for: self)
    }
}
