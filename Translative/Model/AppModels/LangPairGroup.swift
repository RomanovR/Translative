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
let english = Language(name: "English", shortName: "En", code: 1033, nationalFlag: "🇬🇧")
let russian = Language(name: "Russian", shortName: "Ru", code: 1049, nationalFlag: "🇷🇺")
let german = Language(name: "German", shortName: "De", code: 1031, nationalFlag: "🇩🇪")

let availableLanguages = ["en":english, "ru":russian, "de":german]

let enru = LangPair(sourceLang: english, destLang: russian)
let ende = LangPair(sourceLang: english, destLang: german)

let userCard = Card(userText: "Eat", translatedText: "Есть")
let anotherUserCard = Card(userText: "Съешь же ещё этих мягких французских булок, да выпей чаю.", translatedText: "Eat these soft French rolls and drink some tea.")
let enruUserCard = Card(userText: """
A table view displays a single column of vertically scrolling content, divided into rows and sections. Each row of a table displays a single piece of information related to your app. Sections let you group related rows together. For example, the Contacts app uses a table to display the names of the user's contacts.
""", translatedText: """
В табличном представлении отображается один столбец содержимого с вертикальной прокруткой, разделенный на строки и разделы. Каждая строка таблицы выводит на экран единственную информацию, относящуюся к вашему приложению. Разделы позволяют группировать связанные строки вместе. Например, приложение Контакты использует таблицу для отображения имен контактов пользователя.
""")
let somesomeUserCard = Card(userText: """
Yeah, I can’t see where you comin' from But I know just what you runnin' from: And what matters ain’t the 'Who's baddest', but the Ones who stop you fallin' from your ladder, when you’re Feelin' like you feelin' now And doin' things just to please your crowd When I love you like the way I love you And I suffer, but I ain’t gonna cut you, 'cause This ain’t no place for no hero
""", translatedText: """
Да, я не вижу, откуда ты, но я знаю, откуда ты бежишь. И важно не "Кто самый плохой", а "Одни", которые останавливают тебя, когда ты падаешь с лестницы, когда ты чувствуешь, что чувствуешь сейчас. И делаешь вещи, чтобы угодить твоей толпе. Когда я люблю тебя так, как я люблю тебя. И я страдаю, но я не собираюсь резать тебя, потому что это не место для героя.
""")
let germanUserCard = Card(userText: "German", translatedText: "Deutsch")

var enruGroup = LangPairGroup(pair: enru, cards: [userCard, somesomeUserCard, anotherUserCard, enruUserCard])
var endeGroup = LangPairGroup(pair: ende, cards: [germanUserCard])

var fakeDB = [enruGroup, endeGroup]
