//
//  Router.swift
//  Translative
//
//  Created by xdrond on 27.06.2020.
//  Copyright © 2020 romanromanov. All rights reserved.
//

import Foundation

// MARK: - Follow through.

class Router<EndPoint: EndPointType>: NetworkRouter {
    private var task: URLSessionTask?

    func request(_ route: EndPoint, completion: @escaping NetworkRouterCompletion) {
        let session = URLSession.shared
        do {
            let request = try self.buildRequest(from: route)
            task = session.dataTask(with: request, completionHandler: { data, response, error in completion(data, response, error)})
        }catch {
            completion(nil, nil, error)
        }
        self.task?.resume()
    }

    func cancel() {
        self.task?.cancel()
    }
}
