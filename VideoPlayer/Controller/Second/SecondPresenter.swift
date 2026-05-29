//
//  SecondPresenter.swift
//  VideoPlayer
//
//  Created by afon.com on 29.05.2026.
//

import UIKit

protocol SecondPresenter {

}

final class SecondPresenterImpl {
    private let viewModel: SecondViewModel
    private let router: SecondRouter

    init(
        viewModel: SecondViewModel,
        router: SecondRouter
    ) {
        self.viewModel = viewModel
        self.router = router
    }
}

extension SecondPresenterImpl: SecondPresenter {

}
