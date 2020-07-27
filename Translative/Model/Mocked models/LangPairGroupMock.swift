//
//  LangPairGroup.swift
//  Translative
//
//  Created by xdrond on 19.06.2020.
//  Copyright © 2020 Roman Romanov. All rights reserved.
//

import Foundation

struct LangPairGroupMock {
    let pair: LangPairMock
    var cards: [CardMock]
}
// MARK: - Temporary singleton for prototype app. Waiting for removal.
let english = LanguageMock(name: "English", shortName: .en, code: 1033, nationalFlag: "🇬🇧")
let russian = LanguageMock(name: "Russian", shortName: .ru, code: 1049, nationalFlag: "🇷🇺")
let german = LanguageMock(name: "German", shortName: .de, code: 1031, nationalFlag: "🇩🇪")

let availableLanguages = ["en":english, "ru":russian, "de":german]

let enru = LangPairMock(sourceLang: english, destLang: russian)
let ende = LangPairMock(sourceLang: english, destLang: german)


let emptyCard = CardMock(userText: "", translatedText: "")
let userCard = CardMock(userText: "Eat", translatedText: "Есть")
let anotherUserCard = CardMock(userText: "Eat these soft French rolls and drink some tea.", translatedText: "")
let enruUserCard = CardMock(userText: """
A table view displays a single column of vertically scrolling content, divided into rows and sections. Each row of a table displays a single piece of information related to your app. Sections let you group related rows together. For example, the Contacts app uses a table to display the names of the user's contacts.
""", translatedText: """
В табличном представлении отображается один столбец содержимого с вертикальной прокруткой, разделенный на строки и разделы. Каждая строка таблицы выводит на экран единственную информацию, относящуюся к вашему приложению. Разделы позволяют группировать связанные строки вместе. Например, приложение Контакты использует таблицу для отображения имен контактов пользователя.
""")
let somesomeUserCard = CardMock(userText: """
Yeah, I can’t see where you comin' from But I know just what you runnin' from: And what matters ain’t the 'Who's baddest', but the Ones who stop you fallin' from your ladder, when you’re Feelin' like you feelin' now And doin' things just to please your crowd When I love you like the way I love you And I suffer, but I ain’t gonna cut you, 'cause This ain’t no place for no hero
""", translatedText: """
Да, я не вижу, откуда ты, но я знаю, откуда ты бежишь. И важно не "Кто самый плохой", а "Одни", которые останавливают тебя, когда ты падаешь с лестницы, когда ты чувствуешь, что чувствуешь сейчас. И делаешь вещи, чтобы угодить твоей толпе. Когда я люблю тебя так, как я люблю тебя. И я страдаю, но я не собираюсь резать тебя, потому что это не место для героя.
""")
let germanUserCard = CardMock(userText: "German", translatedText: "Deutsch")

var enruGroup = LangPairGroupMock(pair: enru, cards: [emptyCard, userCard, somesomeUserCard, anotherUserCard, enruUserCard])
var endeGroup = LangPairGroupMock(pair: ende, cards: [germanUserCard])

var fakeDB = [enruGroup, endeGroup]
