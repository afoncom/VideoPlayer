//
//  VideoPresenter.swift
//  VideoPlayer
//
//  Created by afon.com on 29.05.2026.
//

import UIKit

protocol VideoPresenter {
    func didTapClose()
}

final class VideoPresenterImpl {
    private let viewModel: VideoViewModel
    private let router: VideoRouter

    init(
        viewModel: VideoViewModel,
        router: VideoRouter
    ) {
        self.viewModel = viewModel
        self.router = router
    }
}

extension VideoPresenterImpl: VideoPresenter {
    func didTapClose() {
        router.dismiss()
    }
}
