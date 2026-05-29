//
//  SecondRouter.swift
//  VideoPlayer
//
//  Created by afon.com on 29.05.2026.
//

import UIKit

protocol SecondRouter {

}

final class SecondRouterImpl {
    private weak var navigationController: UINavigationController?

    init(
        navigationController: UINavigationController?
    ) {
        self.navigationController = navigationController
    }
}

extension SecondRouterImpl: SecondRouter {

}
