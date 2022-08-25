//
//  FeedViewController.swift
//  Navigation
//
//  Created by macOS on 24.08.2022.
//

import UIKit

class FeedViewController: UIViewController {
    
    private lazy var button: UIButton = {
            let button = UIButton(frame: CGRect(x: 0 , y: 0, width: 60, height: 60))
            button.setImage(UIImage(systemName: "p.circle"), for: .normal)
            button.addTarget(self, action: #selector(self.buttonAction), for: .touchUpInside)
            return button
        
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.view.addSubview(self.button)
        self.button.center = self.view.center
    }
    @objc private func buttonAction() {
        
        let postViewController = PostViewController()

                self.navigationController?.pushViewController(postViewController, animated: true)
    }
   
}
