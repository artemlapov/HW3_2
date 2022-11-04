//
//  ViewController.swift
//  HW3_2
//
//  Created by Artem Lapov on 04.11.2022.
//

import UIKit

let emojiUrl = "https://emojihub.herokuapp.com/api/random"

class MainViewController: UIViewController {

    @IBAction func startRequestButton() {
        fetchEmoji()
    }
    
}

extension MainViewController {
    func fetchEmoji() {
        guard let url = URL(string: emojiUrl) else { return }

        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            let decoder = JSONDecoder()
            do {
                let emoji = try decoder.decode(Emoji.self, from: data)
                print(emoji)
            } catch let error {
                print(error.localizedDescription)
            }
        }.resume()

    }
}

