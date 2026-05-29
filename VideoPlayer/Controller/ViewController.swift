//
//  ViewController.swift
//  VideoPlayer
//
//  Created by afon.com on 29.05.2026.
//

import UIKit

class ViewController: UIViewController {

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Привет!"
        label.font = .systemFont(ofSize: 28, weight: .bold)
        label.textAlignment = .center
        return label
    }()

    private let openSecondScreenButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Второй экран", for: .normal)
        return button
    }()

    private let stackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground

        setupViews()
        setupLayout()
        setupActions()
    }

    private func setupViews() {
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.translatesAutoresizingMaskIntoConstraints = false

        [titleLabel, openSecondScreenButton].forEach {
            stackView.addArrangedSubview($0)
        }

        view.addSubview(stackView)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    private func setupActions() {
        openSecondScreenButton.addTarget(
            self,
            action: #selector(openSecondScreenTapped),
            for: .touchUpInside
        )
    }

    @objc
    private func openSecondScreenTapped() {
        let secondVC = SecondModule.build()
        present(secondVC, animated: true)
    }
}
