//
//  VideoModule.swift
//  VideoPlayer
//
//  Created by afon.com on 29.05.2026.
//

import SwiftUI
import UIKit

final class VideoModule {
    static func build() -> UIViewController {
        let viewModel = VideoViewModel(
            videoURLString: "https://rutube.ru/play/embed/541fbdc17a3c28e8ef56efe1c90403d0"
        )
        let router = VideoRouterImpl(viewController: nil)
        let presenter = VideoPresenterImpl(viewModel: viewModel, router: router)
        let view = VideoScreen(viewModel: viewModel, presenter: presenter)
        let hostingController = UIHostingController(rootView: view)
        router.attach(viewController: hostingController)
        
        return hostingController
    }
}
