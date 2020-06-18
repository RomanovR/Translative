//
//  LangPairGroup.swift
//  Translative
//
//  Created by xdrond on 19.06.2020.
//  Copyright © 2020 romanromanov. All rights reserved.
//

import Foundation

struct LangPairGroup {
    let pair: LangPair
    var cards: [Card]
}
// MARK: - Temporary singleton for prototype app. Waiting for removal.
let english = Language(name: "English", shortName: "En", code: 1033)
let russian = Language(name: "Russian", shortName: "Ru", code: 1049)
let german = Language(name: "German", shortName: "De", code: 1031)

let availableLanguages = ["en":english, "ru":russian, "de":german]

let enru = LangPair(sourceLang: english, destLang: russian)
let ende = LangPair(sourceLang: english, destLang: german)

let userCard = Card(userText: "Eat", translatedText: "Есть")
let anotherUserCard = Card(userText: "Съешь же ещё этих мягких французских булок, да выпей чаю.", translatedText: "Eat these soft French rolls and drink some tea.")
let germanUserCard = Card(userText: "German", translatedText: "Deutsch")

var enruGroup = LangPairGroup(pair: enru, cards: [userCard, anotherUserCard])
var endeGroup = LangPairGroup(pair: ende, cards: [germanUserCard])

var fakeDB = [enruGroup, endeGroup]
