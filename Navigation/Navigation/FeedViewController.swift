//
//  FeedViewController.swift
//  Navigation
//
//  Created by macOS on 24.08.2022.
//

import UIKit

class FeedViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton(frame: CGRect(x: 100, y: 400, width: 100, height: 50))
          button.backgroundColor = .brown
          button.setTitle("Go in", for: .normal)
          button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)

          self.view.addSubview(button)

        
    }
    @objc private func buttonAction() {
        
        let postViewController = PostViewController()

                self.navigationController?.pushViewController(postViewController, animated: true)
    }
   
}
