//
//  VideoRouter.swift
//  VideoPlayer
//
//  Created by afon.com on 29.05.2026.
//

import UIKit

protocol VideoRouter {
    func dismiss()
}

final class VideoRouterImpl {
    private weak var viewController: UIViewController?

    init(
        viewController: UIViewController?
    ) {
        self.viewController = viewController
    }
    
    func attach(viewController: UIViewController) {
        self.viewController = viewController
    }
}

extension VideoRouterImpl: VideoRouter {
    func dismiss() {
        viewController?.dismiss(animated: true)
    }
}
