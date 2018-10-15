//
//  PhoneCaller.swift
//  robots
//
//  Created by TeeDee on 28.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import UIKit

class PhoneCaller {
    class func callPhone(phone: String) {
        var number = phone
        if (number.range(of: "\n") != nil) {
            let endIndex = number.index(of: "\n")
            let range = number.startIndex..<endIndex!
            number = String(number[range])
        } else {
            number = phone
        }
        let formattedPhone = number.components(separatedBy: NSCharacterSet.decimalDigits.inverted).joined(separator: "")
        
        print("Phone:\(number)")
        print("Formatted phone:\(formattedPhone)")
        
        let url = URL(string: "telprompt://" + formattedPhone)!
        let application = UIApplication.shared
        if application.canOpenURL(url) { application.openURL(url) }
    }
}
