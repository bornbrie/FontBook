//
//  FontBookTests.swift
//  FontBookTests
//
//  Created by Brie on 6/20/18.
//  Copyright © 2018 Brianna Lee. All rights reserved.
//

import XCTest
@testable import FontBook

class FontBookTests: XCTestCase {
    
    var font: FontBook!
    
    override func setUp() {
        super.setUp()
        
        font = Fonts.helveticaNeue.rawValue
    }
    
    override func tearDown() {
        font = nil
        
        super.tearDown()
    }
    
    func testFontParamers() {
        let uiFont = font.of(size: 12, and: .black)
        XCTAssert(uiFont.fontName == font.rawString)
    }
    
}
