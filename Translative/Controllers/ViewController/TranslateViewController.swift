//
//  TranslateViewController.swift
//  Translative
//
//  Created by xdrond on 16.06.2020.
//  Copyright © 2020 Roman Romanov. All rights reserved.
//

import UIKit

class TranslateViewController: UIViewController {
    
    @IBOutlet weak var sourceTextField: UITextView!
    @IBOutlet weak var destTextField: UITextView!
    @IBOutlet weak var loadingProgress: UIProgressView!

    var networkManager: NetworkManager!

    var indexOfLangGroup: Int!
    var indexOfCard: Int!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.networkManager = NetworkManager()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        
        if indexOfLangGroup != nil && indexOfCard != nil {
            sourceTextField.text = fakeDB[indexOfLangGroup].cards[indexOfCard].userText

            networkManager.getTranslation(quote: sourceTextField.text, source: .ru, target: .en) { translatedQuote, error in
                if let error = error {
                    print(error)
                }
                if let translatedQuote = translatedQuote {
                    print(translatedQuote.translatedText)
                }
            }

            //destTextField.text = fakeDB[indexOfLangGroup].cards[indexOfCard].translatedText
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
