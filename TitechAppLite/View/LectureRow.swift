//
//  LectureRow.swift
//  TitechAppLite
//
//  Created by 柳田 涼華 on 2020/08/16.
//  Copyright © 2020 Lei. All rights reserved.
//

import SwiftUI

struct LectureRow: View {
    let lecture: Lecture
    var body: some View {
        HStack(spacing: 0) {
            Rectangle()
                .foregroundColor(Color("main"))
                .frame(width: 5)
            VStack(alignment: .leading, spacing: 20) {
                Text(lecture.startTime)
                    .foregroundColor(Color("textmain"))
                    .font(Font.system(size: 13))
                Text(lecture.finishTime)
                    .foregroundColor(Color("textsub"))
                    .font(Font.system(size: 13))
            }
            .padding(.vertical, 20)
            .padding(.horizontal, 15)
            
            VStack(alignment: .leading, spacing: 20) {
                Text(lecture.name)
                    .font(Font.system(size: 15))
                    .lineLimit(1)
                    .foregroundColor(Color("textmain"))
                Text(lecture.explain)
                    .font(Font.system(size: 13))
                    .lineLimit(1)
                    .foregroundColor(Color("textsub"))
            }
            .padding(.vertical, 20)
            .padding(.horizontal, 15)
            Spacer()
            Text(lecture.place)
                .lineLimit(2)
                .font(Font.system(size: 14))
                .foregroundColor(Color("main"))
                .frame(width: 55)
        }
    }
}

struct LectureRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LectureRow(lecture: Lecture(
                id: "1",
                name: "微分積分学第一・演習",
                startTime: "08:50",
                finishTime: "10:30",
                explain: "ガイダンス",
                place: "zoom"
            ))
        }
    }
}
