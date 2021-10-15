//
//  ViewController.swift
//  D2Runeword
//
//  Created by Artem Kayumov on 15.10.2021.
//

import UIKit

class RuneSelectViewController: UIViewController {

    // MARK: - Dependency
    // MARK: - IBOutlets
    // MARK: - Constants
    // MARK: - Public properties
    // MARK: - Private properties
    
    private let titleLabel = UILabel()
    
    // MARK: - Init
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Configuration
    // MARK: - Binding
    // MARK: - Public methods
    // MARK: - Private methods
    
    private func configureUI() {
        configureTitleLabel()
        configureCollection()
    }
    
    private func configureCollection() {
        let runeLayout = RuneSelectCollectionFlowLayout()
        guard let runes = RuneModels.parse(jsonFile: "runes") else { return }
        let viewModel = RuneSelectCollectionViewModel(runes: runes)
        let runeCollection = RuneSelectCollectionView(layout: runeLayout, viewModel: viewModel)
        view.addSubview(runeCollection)
        runeCollection.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(20.0)
            $0.right.left.bottom.equalToSuperview()
        }
    }
    
    private func configureTitleLabel() {
        titleLabel.text = "choose the runes you have".uppercased()
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.systemFont(ofSize: 24.0)
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(50.0)
        }
    }
    
    // MARK: - IBActions
    // MARK: - Buttons methods
    // MARK: - Adaptation
}

