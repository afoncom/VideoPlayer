//
//  SecondScreen.swift
//  VideoPlayer
//
//  Created by afon.com on 29.05.2026.
//

import SwiftUI
import WebKit

struct SecondScreen: View {
    private var viewModel: SecondViewModel
    private let presenter: SecondPresenter
    
    init(
        viewModel: SecondViewModel,
        presenter: SecondPresenter
    ) {
        self.viewModel = viewModel
        self.presenter = presenter
    }

    var body: some View {
        VStack(spacing: 0) {

            VideoWebView(urlString: "https://rutube.ru/play/embed/541fbdc17a3c28e8ef56efe1c90403d0")
        }
        .background(Color(uiColor: .systemBackground))
    }
}

private struct VideoWebView: UIViewRepresentable {
    let urlString: String
    
    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        guard let url = URL(string: urlString) else { return }
        
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
