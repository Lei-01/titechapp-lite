//
//  APIClient.swift
//  TitechAppLite
//
//  Created by 柳田 涼華 on 2020/08/30.
//  Copyright © 2020 Lei. All rights reserved.
//

import Foundation
import Combine

struct APIClient {
    let session: URLSession
    init() {
        session = URLSession.shared
    }
    func fetch(url: URL) -> AnyPublisher<Data, URLError> {
        let request = URLRequest(url: url, cachePolicy: .reloadRevalidatingCacheData, timeoutInterval: 10)
        return session
            .dataTaskPublisher(for: request)
            .map { $0.data }
            .eraseToAnyPublisher()
    }
}
