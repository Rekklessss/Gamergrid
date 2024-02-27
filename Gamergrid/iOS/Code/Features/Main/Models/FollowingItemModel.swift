//
//  SelectedGameModel.swift
//  Gamergrid
//
//  Created by user2 on 04/02/24.
//

import Foundation

struct FollowingItem: Codable, Identifiable {
    let id: Int
    let imgUrl: String
    let name: String
    let selected: Bool
}

let CSGO = FollowingItem(id: 1, imgUrl: "CSGO", name: "Counter Strike", selected: false)

let Games : [FollowingItem] = [CSGO]

typealias FollowingItemsList = [FollowingItem]

extension FollowingItemsList: RawRepresentable {
    public init?(rawValue: String) {
        guard let data = rawValue.data(using: .utf8),
            let result = try? JSONDecoder().decode(FollowingItemsList.self, from: data)
        else {
            return nil
        }
        self = result
    }

    public var rawValue: String {
        guard let data = try? JSONEncoder().encode(self),
            let result = String(data: data, encoding: .utf8)
        else {
            return "[]"
        }
        return result
    }
}
