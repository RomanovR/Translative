//
//  URLParameterEncoder.swift
//  Translative
//
//  Created by xdrond on 27.06.2020.
//  Copyright © 2020 Roman Romanov. All rights reserved.
//

import Foundation

// MARK: - Follow through.

public struct URLParameterEncoder: ParameterEncoder {
    public static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws {
        guard let url = urlRequest.url else { throw NetworkError.missingURL }

        if var urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: false), !parameters.isEmpty {
            urlComponents.queryItems = [URLQueryItem]()

            for (key, value) in parameters {
                let queryItem = URLQueryItem(name: key, value: "\(value)".addingPercentEncoding(withAllowedCharacters: .urlHostAllowed))
                urlComponents.queryItems?.append(queryItem)

            }
            urlRequest.url = urlComponents.url
        }

        if urlRequest.value(forHTTPHeaderField: "Content-Type") == nil {
            urlRequest.setValue("application/x-www-form-urlencoded; charset=utf-8", forHTTPHeaderField: "Content-Type")
        }
    }
}

/*
 The code above takes parameters and makes them safe to be passed as URL parameters. As you should know some characters are forbidden in URLs. Parameters are also separated by the ‘&’ symbol, so we need to cater for all of that. We also add appropriate headers for the request if they are not set.
 This sample of code is something that we should consider testing with Unit Tests. It’s crucial that the URL is built correctly as we could get many unnecessary errors. If you are using an open API you would not want your request quota to be used up by a number of failing test. If you would like to learn more about Unit Testing you can get started by reading this post by S.T.Huang - https://medium.com/flawless-app-stories/the-complete-guide-to-network-unit-testing-in-swift-db8b3ee2c327
 */
