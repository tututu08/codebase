//
//  ViewController.swift
//  codebase
//
//  Created by 강성훈 on 3/26/25.
//
import UIKit
import SnapKit

class FirstViewController: UIViewController {
    
    let label = UILabel()
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        labelUI()
        buttonUI()
    }
    
    func labelUI() {
        label.text = "반갑습니다"
        label.textColor = .black
        label.textAlignment = .center
        view.addSubview(label)
        
        label.snp.makeConstraints {
            $0.width.equalTo(100)
            $0.height.equalTo(20)
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview()
        }
    }
    
    func buttonUI() {
        button.setTitle("PUSH", for: .normal)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        view.addSubview(button)
        
        button.snp.makeConstraints {
            $0.top.equalTo(label.snp.bottom).offset(8)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(100)
            $0.height.equalTo(40)
        }
        
        button.addTarget(self, action: #selector(presentModal), for: .touchUpInside)
    }
    
    @objc func presentModal() {
        let modalVC = ModalViewController()
        modalVC.modalPresentationStyle = .fullScreen
        present(modalVC, animated: true)
    }
}
