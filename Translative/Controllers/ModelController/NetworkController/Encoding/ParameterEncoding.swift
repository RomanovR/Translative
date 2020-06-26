//
//  ParameterEncoding.swift
//  Translative
//
//  Created by xdrond on 27.06.2020.
//  Copyright © 2020 romanromanov. All rights reserved.
//

import Foundation

public typealias Parameters = [String:Any]

public enum NetworkError: String, Error {
    case parametersNil = "Parameters were nil."
    case encodingFailed = "Parameter encoding failed."
    case missingURL = "URL is nil."
}

public protocol ParameterEncoder {
    static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws
}

