//
//  RuneSelectCollectionView.swift
//  D2Runeword
//
//  Created by Artem Kayumov on 15.10.2021.
//

import UIKit

class RuneSelectCollectionView: UICollectionView {
    // MARK: - Dependency
    // MARK: - IBOutlets
    // MARK: - Constants
    // MARK: - Public properties
    // MARK: - Private properties
    
    private let viewModel: RuneSelectCollectionViewModel
    
    // MARK: - Init
    
    init(layout: UICollectionViewLayout, viewModel: RuneSelectCollectionViewModel) {
        self.viewModel = viewModel
        super.init(frame: .zero, collectionViewLayout: layout)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    // MARK: - Configuration
    // MARK: - Binding
    // MARK: - Public methods
    // MARK: - Private methods
    
    private func configure() {
        register(RuneSelectCollectionCell.self, forCellWithReuseIdentifier: "RuneSelectCollectionCell")
        dataSource = self
        delegate = self
    }
    
    // MARK: - IBActions
    // MARK: - Buttons methods
    // MARK: - Adaptation

}

extension RuneSelectCollectionView: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel.runes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = dequeueReusableCell(withReuseIdentifier: "RuneSelectCollectionCell", for: indexPath) as? RuneSelectCollectionCell
        else {
            return UICollectionViewCell ()
        }
        cell.configure(with: viewModel.runes[indexPath.row])
        return cell
    }
}

extension RuneSelectCollectionView: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let cell = cellForItem(at: indexPath) as? RuneSelectCollectionCell else { return }
        if cell.isCurrent {
            viewModel.deleteRune(viewModel.runes[indexPath.row])
            print("added rune \(viewModel.runes[indexPath.row].name)")
        } else {
            viewModel.selectRune(viewModel.runes[indexPath.row])
            print("deleted rune \(viewModel.runes[indexPath.row].name)")
        }
        cell.isCurrent.toggle()
    }
}
