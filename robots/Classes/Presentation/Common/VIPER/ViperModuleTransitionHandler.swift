//
//  ViperModuleTransitionHandler.swift
//  robots
//
//  Created by TeeDee on 27.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import UIKit

protocol ViperModuleTransitionHandler: class {
    weak var moduleInput: ViperModuleInput? { get set }
    weak var moduleOutput: ViperModuleOutput? { get set }
    func openModule(_ segueIdentifier: String, configurationBlock: ConfigurationBlock?)
}

extension ViperModuleTransitionHandler where Self: UIViewController {
    func openModule(_ segueIdentifier: String, configurationBlock: ConfigurationBlock?) {
        let configurationBlockHolder = ViperModuleConfigurationBlockHolder(configurationBlock: configurationBlock)
        performSegue(withIdentifier: segueIdentifier, sender: configurationBlockHolder)
    }
}
