//
//  Language.swift
//  Translative
//
//  Created by xdrond on 18.06.2020.
//  Copyright © 2020 Roman Romanov. All rights reserved.
//

import Foundation

struct Language: Equatable {
    let name: String
    let shortName: String?
    let code: UInt?
    let nationalFlag: String?
    
    static func == (lhs: Language, rhs: Language) -> Bool {
        return lhs.name.lowercased() == rhs.name.lowercased() ? true : false
    }
}

