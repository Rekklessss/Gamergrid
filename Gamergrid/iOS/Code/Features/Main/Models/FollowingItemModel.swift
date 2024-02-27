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
let Valorant = FollowingItem(id: 2, imgUrl: "Valorant", name: "Valorant", selected: false)

let Fnatic = FollowingItem(id: 1, imgUrl: "TeamFnatic", name: "Fnatic", selected: false)
let Faze = FollowingItem(id: 2, imgUrl: "TeamFaze", name: "Faze", selected: false)
let liquid = FollowingItem(id: 3, imgUrl: "TeamLiquid", name: "Team Liquid", selected: false)

let RoobetCup = FollowingItem(id: 1, imgUrl: "RoobetCup", name: "Roobet Cup", selected: false)
let ESLOne = FollowingItem(id: 2, imgUrl: "ESLOne", name: "ESL One", selected: false)
let FlastPoint = FollowingItem(id: 3, imgUrl: "FlashPoint", name: "Flash Point", selected: false)

let Games : [FollowingItem] = [CSGO,Valorant]
let Teams : [FollowingItem] = [Fnatic, Faze, liquid,Fnatic, Faze, liquid,Fnatic, Faze, liquid,Fnatic, Faze, liquid]
let Leagues : [FollowingItem] = [RoobetCup, ESLOne, FlastPoint]

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
