//
//  LectureHeader.swift
//  TitechAppLite
//
//  Created by 柳田 涼華 on 2020/08/23.
//  Copyright © 2020 Lei. All rights reserved.
//

import SwiftUI

struct LectureHeader: View {
    let date: DateGroupLectures
    var body: some View {
        HStack(spacing: 0) {
            Rectangle()
                .foregroundColor(Color("graymain"))
                .frame(width: 5)
            Text("\(date.month)月\(date.day)日 \(date.dayWeek)")
                .foregroundColor(Color("textsub"))
                .font(Font.system(size: 13))
                .padding()
            Spacer()
        }
        .background(Color("backgroundmain"))
    }
}

struct LectureHeader_Previews: PreviewProvider {
    static var previews: some View {
        LectureHeader(date: DateGroupLectures(id: 0830, month: 8, day: 30, dayWeek: "日曜日", lectures: [
            Lecture(id: 1, name: "微分積分学第一・演習", startTime: "08:50", finishTime: "10:30", explain: "ガイダンス", place: "zoom")
        ]))
    }
}
