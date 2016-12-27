//
//  ViperModuleInput.swift
//  robots
//
//  Created by TeeDee on 27.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import Foundation

protocol ViperModuleInput: class {
    func setModuleOutput(moduleOutput: ViperModuleOutput)
}

extension ViperModuleInput {
    func setModuleOutput(moduleOutput: ViperModuleOutput) { }
}
