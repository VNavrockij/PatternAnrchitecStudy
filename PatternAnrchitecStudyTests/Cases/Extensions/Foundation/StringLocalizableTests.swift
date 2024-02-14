//
//  StringLocalizableTests.swift
//  PatternAnrchitecStudyTests
//
//  Created by Vitalii Navrotskyi on 14.02.2024.
//

import XCTest
@testable import PatternAnrchitecStudy

final class StringLocalizableTests: XCTestCase {
    func test_Localizeble_EmptyKey_Empty() {
        let string: String = ""
        let result = string.localizable
        XCTAssertEqual(string, result)
    }

    func test_Localizeble_NotExtKeys_Key() {
        let string: String = "asdfasd"
        let result = string.localizable
        XCTAssertEqual(string, result)
    }

    func test_Localizeble_ExtKey_LocalizableValue() {
        let string: String = "STR_LOGIN"
        let result = string.localizable
        let currentLocal = Locale.current
        let checkString: String
        if currentLocal.identifier == "uk_UA" {
            checkString = "Увійти"
        } else if currentLocal.identifier == "en_UA" {
            checkString = "Login"
        } else {
            checkString = ""
        }
        XCTAssertEqual(checkString, result)
    }
}
