//
//  ModalViewController.swift
//  codebase
//
//  Created by 강성훈 on 3/26/25.
//

import UIKit
import SnapKit

class ModalViewController: UIViewController {

    let label = UILabel()
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        labelUI()
        buttonUI()
    }

    func labelUI() {
        label.text = "Change"
        label.textColor = .white
        view.addSubview(label)

        label.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview()
        }
    }

    func buttonUI() {
        button.setTitle("원래대로", for: .normal)
        button.backgroundColor = .red
        button.setTitleColor(.white, for: .normal)
        view.addSubview(button)

        button.snp.makeConstraints {
            $0.top.equalTo(label.snp.bottom).offset(8)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(160)
            $0.height.equalTo(40)
        }

        button.addTarget(self, action: #selector(dismissModal), for: .touchUpInside)
    }

    @objc func dismissModal() {
        dismiss(animated: true)
    }
}
