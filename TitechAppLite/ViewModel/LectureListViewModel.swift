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
    @Published var lectures = [Lecture]()
    private var cancellable: AnyCancellable!
    func appear() {
        lectures = [
            Lecture(id: 1, name: "微分積分学第一・演習", starttime: "08:50", finishtime: "10:30", explain: "ガイダンス", place: "zoom"),
            Lecture(id: 2, name: "微分積分学第一・演習", starttime: "08:50", finishtime: "10:30", explain: "ガイダンス", place: "zoom")
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
