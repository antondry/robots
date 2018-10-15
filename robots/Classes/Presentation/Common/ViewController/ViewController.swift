//
//  ViewController.swift
//  robots
//
//  Created by TeeDee on 28.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ViperModuleRequestViewInput {
    
    //MARK: Properties
    
    var spinner: UIActivityIndicatorView!
    
    var requestInProgress = false
    
    // MARK: UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initBackButton()
        initSpinner()
        self.automaticallyAdjustsScrollViewInsets = false
    }
    
    override var prefersStatusBarHidden: Bool { return navigationController?.isNavigationBarHidden ?? false }
    
    // MARK: Internal helpers
    
    func startRequest() { initStartRequest() }
    
    func endRequest() { initEndRequest() }
    
    func initStartRequest() {
        spinner.startAnimating()
        requestInProgress = true
    }
    
    func initEndRequest() {
        spinner.stopAnimating()
        requestInProgress = false
    }
    
    // MARK: Private helpers
    
    private func initSpinner() {
        spinner = UIActivityIndicatorView(style: .whiteLarge)
        spinner.color = Color.black
        spinner.hidesWhenStopped = true
        spinner.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(spinner)
        NSLayoutConstraint(item: spinner, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: spinner, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0).isActive = true
    }
    
    private func initBackButton() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
}
