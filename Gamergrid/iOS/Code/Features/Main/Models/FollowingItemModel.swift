//
//  SelectedGameModel.swift
//  Gamergrid
//
//  Created by user2 on 04/02/24.
//

import Foundation



struct FollowingItem: Codable, Identifiable {
    let id: Int
    let type: String
    let imgUrl: String
    let name: String
    var selected: Bool
}


let Games: [FollowingItem] = [
    FollowingItem(id: 1, type: "Game", imgUrl: "CSGO", name: "Counter Strike", selected: false),
    FollowingItem(id: 2, type: "Game", imgUrl: "Valorant", name: "Valorant", selected: false),
    FollowingItem(id: 3, type: "Game", imgUrl: "Dota2", name: "Dota 2", selected: false),
    FollowingItem(id: 4, type: "Game", imgUrl: "ApexLegends", name: "Apex Legends", selected: false),
    FollowingItem(id: 5, type: "Game", imgUrl: "Fortnite", name: "Fortnite", selected: false),
    FollowingItem(id: 6, type: "Game", imgUrl: "LeagueOfLegends", name: "League of Legends", selected: false),
    FollowingItem(id: 7, type: "Game", imgUrl: "PUBG", name: "PUBG", selected: false),
    FollowingItem(id: 8, type: "Game", imgUrl: "RainbowSix", name: "Rainbow Six", selected: false),
    FollowingItem(id: 9, type: "Game", imgUrl: "RocketLeague", name: "Rocket League", selected: false)
]


let Teams: [FollowingItem] = [
    FollowingItem(id: 1, type: "Team", imgUrl: "TeamFnatic", name: "Fnatic", selected: false),
    FollowingItem(id: 2, type: "Team", imgUrl: "TeamLiquid", name: "Liquid", selected: false),
    FollowingItem(id: 3, type: "Team", imgUrl: "TeamFaze", name: "Faze", selected: false),
    FollowingItem(id: 4, type: "Team", imgUrl: "TeamCloud9", name: "Cloud 9", selected: false),
    FollowingItem(id: 5, type: "Team", imgUrl: "TeamG2", name: "G2", selected: false),
    FollowingItem(id: 6, type: "Team", imgUrl: "TeamEvilGenius", name: "Evil Geniuses", selected: false),
    FollowingItem(id: 7, type: "Team", imgUrl: "TeamNavi", name: "Natus Vincere", selected: false), // Abbreviated Navi
    FollowingItem(id: 8, type: "Team", imgUrl: "TeamOpticGaming", name: "OpTic Gaming", selected: false),
    FollowingItem(id: 9, type: "Team", imgUrl: "TeamTSM", name: "TSM", selected: false)
]


let Leagues: [FollowingItem] = [
    FollowingItem(id: 1, type: "League", imgUrl: "RoobetCup", name: "Roobet Cup", selected: false),
    FollowingItem(id: 2, type: "League", imgUrl: "FlashPoint", name: "Flash Point", selected: false), // Fixed duplicate ID
    FollowingItem(id: 3, type: "League", imgUrl: "PremierCup", name: "Premier Cup", selected: false),
    FollowingItem(id: 4, type: "League", imgUrl: "ESL", name: "ESL", selected: false),
    FollowingItem(id: 5, type: "League", imgUrl: "ESLOne", name: "ESL One", selected: false),
    FollowingItem(id: 6, type: "League", imgUrl: "AsiaCup", name: "Asia Cup", selected: false),
    FollowingItem(id: 7, type: "League", imgUrl: "DreamhackCup", name: "Dreamhack Cup", selected: false),
    FollowingItem(id: 8, type: "League", imgUrl: "StockholmCup", name: "Stockholm Cup", selected: false),
    FollowingItem(id: 9, type: "League", imgUrl: "ThunderpickCup", name: "Thunderpick Cup", selected: false)
]


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

