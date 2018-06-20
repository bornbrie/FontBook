//
//  FontBook.swift
//  Eightfold
//
//  Created by Brianna Lee on 3/12/18.
//  Copyright © 2018 Owly Design. All rights reserved.
//  Credit: https://medium.com/@londeix/listing-all-cases-in-an-enum-3b057f2c1432

import UIKit

public struct FontBook {
    
    public static var all: Set<String> = []
    
    public func of(size: CGFloat, and color: UIColor) -> UIFont {
        let font = UIFont(name: rawString!, size: size)!
        return font
    }
    
    // Start ExpressibleByStringLiteral
    public let rawString: String?
    
    init(){
        rawString = nil
    }
    // End ExpressibleByStringLiteral
}

extension FontBook: ExpressibleByStringLiteral {
    
    public init(stringLiteral value: String){
        rawString = value
    }
    
    public init(extendedGraphemeClusterLiteral value: String){
        rawString = value
    }
    
    public init(unicodeScalarLiteral value: String){
        rawString = value
    }
}

extension FontBook: FontBookie {
    
    public static func ==(lhs: FontBook, rhs: FontBook) -> Bool {
        if let lhsRaw = lhs.rawString { FontBook.all.insert(lhsRaw)}
        if let rhsRaw = rhs.rawString { FontBook.all.insert(rhsRaw)}
        
        return lhs.rawString == rhs.rawString
    }
}

fileprivate protocol FontBookie: Equatable {
    func of(size: CGFloat, and color: UIColor) -> UIFont
}
