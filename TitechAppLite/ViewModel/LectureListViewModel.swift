//
//  LectureListViewModel.swift
//  TitechAppLite
//
//  Created by 柳田 涼華 on 2020/08/30.
//  Copyright © 2020 Lei. All rights reserved.
//

import Foundation
import Combine

class LectureListViewModel: ObservableObject {
    @Published var dates = [DateGroupLectures]()
    private var cancellable: AnyCancellable!
    func appear() {
        dates = [
            DateGroupLectures(id: 0830, month: 8, day: 30, dayWeek: "日曜日", lectures: [
                Lecture(id: 1, name: "微分積分学第一・演習", startTime: "08:50", finishTime: "10:30", explain: "ガイダンス", place: "zoom")
            ]),
            DateGroupLectures(id: 0902, month: 9, day: 2, dayWeek: "水曜日", lectures: [
                Lecture(id: 1, name: "微分積分学第一・演習", startTime: "08:50", finishTime: "10:30", explain: "ガイダンス", place: "zoom"),
                Lecture(id: 2, name: "微分積分学第一・演習", startTime: "08:50", finishTime: "10:30", explain: "ガイダンス", place: "zoom")
            ])
        ]
//        cancellable = APIClient()
//            .tryMap {
//                try JSONDecoder().decode([Lecture].self, from: $0)
//            }
//        .receive(on: DispatchQueue.main)
//        .sink(
//            receiveCompletion: {
//                result in
//            },
//            receiveValue: {
//                lectures in
//                self.lectures = lectures
//            }
//        )
    }
}
