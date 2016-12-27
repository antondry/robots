//
//  ViperModuleViewController.swift
//  robots
//
//  Created by TeeDee on 27.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import UIKit

class ViperModuleViewController: ViewController, ViperModuleTransitionHandler {
    
    var moduleInput: ViperModuleInput?
    var moduleOutput: ViperModuleOutput?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let configBlock = (sender as? ViperModuleConfigurationBlockHolder)?.configurationBlock,
            let moduleInput = (segue.destination as? ViperModuleTransitionHandler)?.moduleInput
            else { return }
        if let out = configBlock(moduleInput) {
            moduleInput.setModuleOutput(moduleOutput: out)
        }
    }
}
