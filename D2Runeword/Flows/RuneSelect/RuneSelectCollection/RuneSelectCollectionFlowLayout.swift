//
//  RuneSelectCollectionFlowLayout.swift
//  D2Runeword
//
//  Created by Artem Kayumov on 15.10.2021.
//

import UIKit

class RuneSelectCollectionFlowLayout: UICollectionViewFlowLayout {
    
    override init() {
        super.init()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        minimumInteritemSpacing = 1.0
        minimumLineSpacing = 1.0
        scrollDirection = .vertical
        itemSize = CGSize(width: 60.0, height: 60.0)
    }
}
