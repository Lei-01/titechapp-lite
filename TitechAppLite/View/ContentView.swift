//
//  ContentView.swift
//  TitechAppLite
//
//  Created by 柳田 涼華 on 2020/08/16.
//  Copyright © 2020 Lei. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(0..<10) { _ in
                LectureRow()
                    .padding(.horizontal, -13)
                    .padding(.vertical, -8)
            }
            .navigationBarTitle(Text("スケジュール"), displayMode: .inline)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
