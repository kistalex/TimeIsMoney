//
//
// TimeIsMoney
// CustomButton.swift
//
// Created by Alexander Kist on 25.11.2023.
//

import UIKit

final class CustomTextButton: UIButton {

    enum FontSize {
        case big
        case medium
        case small
    }

    init(title: String, hasBackground: Bool = false, fontSize: FontSize, bgColor: UIColor, textColor: UIColor) {
        super.init(frame: .zero)
        setTitle(title, for: .normal)
        layer.cornerRadius = 12
        layer.masksToBounds = true

        backgroundColor = hasBackground ? bgColor : .clear

        let titleColor: UIColor = hasBackground ? textColor : .systemBlue
        setTitleColor(titleColor, for: .normal)

        switch fontSize {
        case .big:
            titleLabel?.font = UIFont.big()
        case .medium:
            titleLabel?.font = UIFont.medium()
        case .small:
            titleLabel?.font = UIFont.small()
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = frame.size.height / 2
    }

}
