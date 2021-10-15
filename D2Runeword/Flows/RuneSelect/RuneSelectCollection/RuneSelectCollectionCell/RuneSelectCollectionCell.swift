//
//  RuneSelectCollectionCell.swift
//  D2Runeword
//
//  Created by Artem Kayumov on 15.10.2021.
//

import SnapKit
import UIKit

class RuneSelectCollectionCell: UICollectionViewCell {
    // MARK: - Dependency
    // MARK: - IBOutlets
    // MARK: - Constants
    // MARK: - Public properties
    // MARK: - Private properties
    
    private var rune: RuneModel?
    private let runeNameLabel = UILabel()
    
    // MARK: - Init
    // MARK: - Lifecycle
    // MARK: - Configuration
    
    func configure(with rune: RuneModel) {
        self.rune = rune
        confifureUI()
    }
    
    // MARK: - Binding
    // MARK: - Public methods
    // MARK: - Private methods
    
    private func confifureUI() {
        configureRuneNameLabel()
        layer.cornerRadius = 6.0
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 1.0
    }
    
    private func configureRuneNameLabel() {
        runeNameLabel.numberOfLines = 1
        runeNameLabel.text = rune?.name
        runeNameLabel.font = UIFont.systemFont(ofSize: 16.0)
        addSubview(runeNameLabel)
        runeNameLabel.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
    
    // MARK: - IBActions
    // MARK: - Buttons methods
    // MARK: - Adaptation
}
