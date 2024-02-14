//
//  String+Localizable.swift
//  PatternAnrchitecStudy
//
//  Created by Vitalii Navrotskyi on 14.02.2024.
//

import Foundation

extension String {
    var localizable: String {
        NSLocalizedString(self, comment: "")
    }
}
