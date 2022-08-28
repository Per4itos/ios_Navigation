//
//  ProfileViewController.swift
//  Navigation
//
//  Created by macOS on 24.08.2022.
//

import UIKit

var titlePost: String = "Profile"



class ProfileViewController: UIViewController {
    
    private lazy var profileHeadrView: ProfileHeaderView = {
        let profileHeaderView = ProfileHeaderView(frame: CGRect(x: 0, y: 70, width: 414, height: 896))
        profileHeaderView.backgroundColor = .lightGray
        
        return profileHeaderView
    }()
    
    private let profile = Profile(name: "Hipster Cat", text: "Waiting for somtehing...")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Profile"
        view.backgroundColor = .white
        self.view.addSubview(self.profileHeadrView)
        self.navigationController?.navigationBar.backgroundColor = .white
        self.profileHeadrView.setup(with: self.profile)
    }
    
    
}
