//
//  NetworkRouter.swift
//  Translative
//
//  Created by xdrond on 27.06.2020.
//  Copyright © 2020 Roman Romanov. All rights reserved.
//

import Foundation

public typealias NetworkRouterCompletion = (_ data: Data?, _ response: URLResponse?, _ error: Error?)->()

protocol NetworkRouter: class {
    associatedtype EndPoint: EndPointType
    func request(_ route: EndPoint, completion: @escaping NetworkRouterCompletion)
    func cancel()
}
