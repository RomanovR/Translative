//
//  Language.swift
//  Translative
//
//  Created by xdrond on 18.06.2020.
//  Copyright © 2020 Roman Romanov. All rights reserved.
//

import Foundation

typealias LanguagesMock = [String:LanguageMock]

/**
 Temporary enum for languages.
 Need to be rewritten for extended language storage.
 */
public enum LanguageCodeMock: String {
    case en = "en"
    case ru = "ru"
    case uk = "uk"
    case de = "de"
    case es = "es"
    case it = "it"
    case fr = "fr"
    case pt = "pt"
    case pl = "pl"
    case et = "et"
    case tr = "tr"
    case sv = "sv"
    case no = "no"
    case da = "da"
    case fi = "fi"
}

struct LanguageMock: Equatable {
    let name: String
    let shortName: LanguageCodeMock
    let code: UInt?
    let nationalFlag: String?
    
    static func == (lhs: LanguageMock, rhs: LanguageMock) -> Bool {
        return lhs.name.lowercased() == rhs.name.lowercased() ? true : false
    }
}
