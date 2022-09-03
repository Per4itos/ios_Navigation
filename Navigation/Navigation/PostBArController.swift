//
//  PostBArController.swift
//  Navigation
//
//  Created by macOS on 29.08.2022.
//

import UIKit

extension UIViewController {

    
      func createNavigationBar () {
      }
      
      func createButtom(imageName: String, selector: Selector) -> UIBarButtonItem {
          
          let button = UIButton(type: .system)
          button.setImage(UIImage(systemName: imageName), for: .normal)
          button.addTarget(self, action: selector, for: .touchUpInside)
          
          let menuBarItem = UIBarButtonItem(customView: button)
          
          return menuBarItem
      }

}
