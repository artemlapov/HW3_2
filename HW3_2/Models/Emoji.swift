//
//  Emoji.swift
//  HW3_2
//
//  Created by Artem Lapov on 04.11.2022.
//

struct Emoji: Decodable {
    let name: String?
    let category: String?
    let group: String?
    let htmlCode: [String]?
    let unicode: [String]?
}

