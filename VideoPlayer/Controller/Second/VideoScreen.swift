//
//  VideoScreen.swift
//  VideoPlayer
//
//  Created by afon.com on 29.05.2026.
//

import SwiftUI
import WebKit

struct VideoScreen: View {
    private var viewModel: VideoViewModel
    private let presenter: VideoPresenter
    
    init(
        viewModel: VideoViewModel,
        presenter: VideoPresenter
    ) {
        self.viewModel = viewModel
        self.presenter = presenter
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            VideoWebView(urlString: viewModel.videoURLString)
                .ignoresSafeArea()
            
            makeTopBar()
                .padding(.top, 16)
                .padding(.horizontal, 16)
            
        }
    }
    
    private func makeTopBar() -> some View {
        HStack {
            Button {
                presenter.didTapClose()
            } label: {
                ZStack {
                    Circle()
                        .fill(.white.opacity(0.9))
                        .frame(width: 44, height: 44)
                    
                    Image(systemName: "xmark")
                        .font(.headline)
                        .foregroundStyle(.black)
                }
            }
            .buttonStyle(.plain)
            
            Spacer()
        }
    }
}

private struct VideoWebView: UIViewRepresentable {
    let urlString: String
    
    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        guard let url = URL(string: urlString) else { return }
        guard webView.url != url else { return }
        
        webView.load(URLRequest(url: url))
    }
}
