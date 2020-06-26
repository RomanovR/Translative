//
//  HTTPTask.swift
//  Translative
//
//  Created by xdrond on 27.06.2020.
//  Copyright © 2020 romanromanov. All rights reserved.
//

import Foundation

public typealias HTTPHeaders = [String:String]

public enum HTTPTask {
    case request

    case requestParameters(bodyParameters: Parameters?, urlParameters: Parameters?)

    case requestParametersAndHeaders(bodyParameters: Parameters?, urlParameters: Parameters?, additionHeaders: HTTPHeaders?)

    // MARK: - case downloads, upload ..etc
}
