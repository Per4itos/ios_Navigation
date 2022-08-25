//
//  InfoViewController.swift
//  Navigation
//
//  Created by macOS on 24.08.2022.
//

import UIKit

class InfoViewController: UIViewController {

    private lazy var closeButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        button.setImage(UIImage(systemName: "stop.circle"), for: .normal)
        button.addTarget(self, action: #selector(self.didTapCloseButton), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemGray
        
        self.view.addSubview(self.closeButton)
        self.closeButton.center = self.view.center

    }
    
    @objc private func didTapCloseButton() {
        
        let alertController = UIAlertController(title: "Cancle", message: "Done", preferredStyle: .actionSheet)
        let firstAction = UIAlertAction(title: "Y", style: .default) { _ in
            print("Yes")
        }
        let secondAction = UIAlertAction(title: "N", style: .destructive) { _ in
            print("No")
        }

        alertController.addAction(firstAction)
        alertController.addAction(secondAction)
        self.present(alertController, animated: true)
    }

}
