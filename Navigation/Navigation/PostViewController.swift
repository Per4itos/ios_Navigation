//
//  PostViewController.swift
//  Navigation
//
//  Created by macOS on 24.08.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    var titlePost: String = "Post123"

    private lazy var button: UIButton = {
            let button = UIButton(frame: CGRect(x: 0, y: 0, width: 65, height: 50))
            button.setImage(UIImage(systemName: "info.circle"), for: .normal)
            button.addTarget(self, action: #selector(self.didTapButton), for: .touchUpInside)
            return button
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.backgroundColor = .lightGray

        self.navigationItem.title = titlePost
        
        self.view.addSubview(self.button)
        
        self.button.center = self.view.center
    }
    
    @objc private func didTapButton() {
        
        let vc = InfoViewController()
        vc.modalPresentationStyle = .popover
        self.present(vc, animated: true)
    }
}



