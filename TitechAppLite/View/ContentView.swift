//
//  ContentView.swift
//  TitechAppLite
//
//  Created by 柳田 涼華 on 2020/08/16.
//  Copyright © 2020 Lei. All rights reserved.


import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = LectureListViewModel()
    var body: some View {
        NavigationView {
            List {
                ForEach(self.viewModel.dates) { date in
                    Section(header: LectureHeader(date: date)) {
                        ForEach(date.lectures) { lecture in
                            LectureRow(lecture: lecture)
                        }
                    }
                    .listRowInsets(EdgeInsets())
                }
            }
            .toolbar {
                ToolbarItem {
                    Button(action: {
                    }) {
                        Text("設定")
                    }
                }
            }
            .navigationBarTitle(Text("スケジュール"), displayMode: .inline)
            
        }
        .onAppear {
            self.viewModel.appear()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

