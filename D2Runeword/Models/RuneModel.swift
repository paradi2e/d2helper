//
//  RuneModel.swift
//  D2Runeword
//
//  Created by Artem Kayumov on 15.10.2021.
//

import Foundation

typealias RuneModels = [RuneModel]

struct RuneModel: Codable {
    let id: Int
    let name: String
    let minLevel: Int
    let weaponBonus, armorBonus, shieldBonus: String
}
