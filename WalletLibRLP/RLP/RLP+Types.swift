//
//  RLP+Types.swift
//  WalletLibRLP
//
//

import Foundation


extension RLP {
    
    
    public typealias LengthDecodingInfo = (length: Int, offset: Int, type: RLPTypes)


    public enum RLPTypes {

        
        case element

        
        case list

        
    }
    
    
    public static var emptyByte: Data {
    
        return Data(repeating: 0x80, count: 1)
    }
    
    
}
