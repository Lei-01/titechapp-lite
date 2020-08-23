//
//  LectureHeader.swift
//  TitechAppLite
//
//  Created by 柳田 涼華 on 2020/08/23.
//  Copyright © 2020 Lei. All rights reserved.
//

import SwiftUI

struct LectureHeader: View {
    var body: some View {
        HStack(spacing: 0) {
            Rectangle()
                .foregroundColor(Color("graymain"))
                .frame(width: 5)
            Text("8月23日 日曜日")
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
        LectureHeader()
    }
}
