//
//  Devices.swift
// Enum that provides common device properties for UIKit
//  
// Sources:
// https://tinyurl.com/y8xsdvnk
// https://tinyurl.com/ybra65gg
//
//  Created by beshbashbosh on 02/11/2018.
//

import Foundation

enum Devices {
    case iPhoneX, iPhoneXs, iPhoneXR, iPhoneXsMax
    case iPhone6, iPhone6s, iPhone7, iPhone6Plus, iPhone6sPlus, iPhone8
    case iPhone7Plus, iPhone8Plus
    case iPhone5, iPhone5s, iPhoneSE
    case iPadMini4, iPadAir2
    case iPadPro9_7, iPadPro10_5
    case iPadPro12_9, iPadPro12_9_2G
    
    // UIKit Size (Points)
    var contentSize: CGSize {
        switch self {
        case .iPhoneXR, .iPhoneXsMax:
            return CGSize(width: 414, height: 896)
        case .iPhoneX, .iPhoneXs:
            return CGSize(width: 375, height: 812)
        case .iPhone6, .iPhone6s, .iPhone7,
             .iPhone6Plus, .iPhone6sPlus, .iPhone8:
            return CGSize(width: 375, height: 667)
        case .iPhone7Plus, .iPhone8Plus:
            return CGSize(width: 414, height: 736)
        case .iPhone5, .iPhone5s, .iPhoneSE:
            return CGSize(width: 320, height: 568)
        case .iPadMini4, .iPadAir2, .iPadPro9_7:
            return CGSize(width: 768, height: 1024)
        case .iPadPro10_5:
            return CGSize(width: 1112, height: 834)
        case .iPadPro12_9, .iPadPro12_9_2G:
            return CGSize(width: 1024, height: 1366)
            
        }
    }
    
    // UIKit Scale Factor
    var scaleFactor: CGFloat {
        switch self {
        case .iPhone5, .iPhone5s, .iPhoneSE,
             .iPhone6, .iPhone6s, .iPhone7,
             .iPhone8, .iPhoneXR, .iPadMini4,
             .iPadAir2, .iPadPro9_7, .iPadPro10_5,
             .iPadPro12_9, .iPadPro12_9_2G:
            return 2.0
        case .iPhone6Plus, .iPhone6sPlus, .iPhone7Plus,
             .iPhone8Plus, .iPhoneX, .iPhoneXs,
             .iPhoneXsMax:
            return 3.0
        }
    }
}

