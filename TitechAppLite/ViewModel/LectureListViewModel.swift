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
        cancellable = APIClient()
        .fetch(url: URL(string: "https://secure.ocw.titech.ac.jp/ocwi/index.php?module=Ocwi&action=Webcal&iCalendarId=5656d103401d73301a3fa5375b4fc2eb38929fa1")!)
            .map{IcalResponseParser.parse(data: $0)}
            .receive(on: DispatchQueue.main)
            .sink(
                receiveCompletion: { result in },
                receiveValue: { [weak self] lectures in
                    self?.dates = LectureTranslator.translate(lectures: lectures)
                }
            )

    }
}
