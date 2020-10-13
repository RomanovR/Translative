//
//  TranslateViewController.swift
//  Translative
//
//  Created by xdrond on 16.06.2020.
//  Copyright © 2020 Roman Romanov. All rights reserved.
//

import UIKit
import CoreData

class TranslateViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var sourceTextField: UITextView!
    @IBOutlet weak var destTextField: UITextView!
    @IBOutlet weak var loadingProgress: UIProgressView!

    /// Постоянное хранилище Core Data.
    var coreDataManager: CoreDataManager!

    var networkManager: NetworkManager!

    var indexOfLangGroup: Int!
    var indexOfCard: Int!

    override func viewDidLoad() {
        super.viewDidLoad()
        sourceTextField.delegate = self
        self.networkManager = NetworkManager()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        
        if indexOfLangGroup != nil && indexOfCard != nil {
            updateTextFields()
        }
    }

    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text == "\n" {
            saveUserText()
            getTranslateToDB()
            sourceTextField.resignFirstResponder()
            return false
        }
        return true
    }

    func saveUserText(){
        fakeDB[indexOfLangGroup].cards[indexOfCard].userText = sourceTextField.text
    }

    func updateTextFields(){
        sourceTextField.text = fakeDB[indexOfLangGroup].cards[indexOfCard].userText
        destTextField.text = fakeDB[indexOfLangGroup].cards[indexOfCard].translatedText
    }

    func getTranslateToDB() {
        networkManager.getTranslation(quote: sourceTextField.text, source: fakeDB[indexOfLangGroup].pair.sourceLang.shortName, target: fakeDB[indexOfLangGroup].pair.destLang.shortName) { translatedQuote, error in
            if let error = error {
                print(error)
            }
            if let translatedQuote = translatedQuote {
                print(translatedQuote)
                fakeDB[self.indexOfLangGroup].cards[self.indexOfCard].translatedText = translatedQuote.translatedText
            }
        }
    }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
