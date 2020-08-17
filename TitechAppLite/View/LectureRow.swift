//
//  LectureRow.swift
//  TitechAppLite
//
//  Created by 柳田 涼華 on 2020/08/16.
//  Copyright © 2020 Lei. All rights reserved.
//

import SwiftUI

struct LectureRow: View {
    var body: some View {
        HStack(spacing: 0) {
            Rectangle()
                .foregroundColor(Color("main"))
                .frame(width: 5)
            VStack(alignment: .leading, spacing: 20) {
                Text("08:50")
                    .foregroundColor(Color("textmain"))
                    .font(Font.system(size: 13))
                Text("10:30")
                    .foregroundColor(Color("textsub"))
                    .font(Font.system(size: 13))
            }
            .padding(.vertical, 20)
            .padding(.horizontal, 15)
            
            VStack(alignment: .leading, spacing: 20) {
                Text("電気的モデリングとシミュレーション")
                    .font(Font.system(size: 15))
                    .lineLimit(1)
                    .foregroundColor(Color("textmain"))
                Text("RC回路とシミュレーション")
                    .font(Font.system(size: 13))
                    .lineLimit(1)
                    .foregroundColor(Color("textsub"))
            }
            .padding(.vertical, 20)
            .padding(.horizontal, 15)
            Spacer()
            Text("W833, G114")
                .lineLimit(2)
                .font(Font.system(size: 14))
                .foregroundColor(Color("main"))
                .frame(width: 55)
        }
    }
}

struct LectureRow_Previews: PreviewProvider {
    static var previews: some View {
        LectureRow()
    }
}
