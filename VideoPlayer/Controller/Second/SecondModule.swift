//
//  SecondModule.swift
//  VideoPlayer
//
//  Created by afon.com on 29.05.2026.
//

import SwiftUI
import UIKit

final class SecondModule {
    static func build() -> UIViewController {
        let viewModel = SecondViewModel()
        let navigationController = UINavigationController()
        let router = SecondRouterImpl(navigationController: navigationController)
        let presenter = SecondPresenterImpl(
            viewModel: viewModel,
            router: router
        )

        let view = SecondScreen(viewModel: viewModel, presenter: presenter)
        let hostingController = UIHostingController(rootView: view)

        navigationController.viewControllers = [hostingController]
        navigationController.setNavigationBarHidden(true, animated: false)

        return navigationController
    }
}
