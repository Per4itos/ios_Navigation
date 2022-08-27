//
//  PostViewController.swift
//  Navigation
//
//  Created by macOS on 24.08.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    
    
    var titlePost: String = "Post123"


    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let button = UIButton(frame: CGRect(x: 100, y: 400, width: 100, height: 50))
          button.backgroundColor = .brown
          button.setTitle("Go in", for: .normal)
          button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)

          self.view.addSubview(button)

        self.view.backgroundColor = .lightGray

        self.navigationItem.title = titlePost
       
        

    }
    
    @objc private func didTapButton() {
        
        let vc = InfoViewController()
        vc.modalPresentationStyle = .popover
        self.present(vc, animated: true)
    }
    
    
    
  
}



