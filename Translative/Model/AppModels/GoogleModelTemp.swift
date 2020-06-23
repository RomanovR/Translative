//
//  GoogleModel.swift
//  Translative
//
//  Created by xdrond on 24.06.2020.
//  Copyright © 2020 romanromanov. All rights reserved.
//

import Foundation

// MARK: - Translate
struct Translate: Codable {
    let data: DataClass?
}

// MARK: - DataClass
struct DataClass: Codable {
    let translations: [Translation]?
}

// MARK: - Translation
struct Translation: Codable {
    let translatedText: String?
}


