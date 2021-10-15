//
//  RuneSelectCollectionViewModel.swift
//  D2Runeword
//
//  Created by Artem Kayumov on 15.10.2021.
//

import Foundation

class RuneSelectCollectionViewModel {
    
    let runes: RuneModels
    var selectedRunes = RuneModels()
    
    init(runes: RuneModels) {
        self.runes = runes
    }
    
    func selectRune(_ rune: RuneModel) {
        selectedRunes.append(rune)
        print(selectedRunes)
    }
    
    func deleteRune(_ rune: RuneModel) {
        guard let currentIndex = selectedRunes.firstIndex(where: { $0.id == rune.id }) else { return }
        selectedRunes.remove(at: currentIndex)
        print(selectedRunes)
    }
}
