//
//  RLPError.swift
//  WalletLibRLP
//
//

import Foundation


public enum RLPError: Error {
    
    
    case wrongEncodeInputType
    
    
    case encodeInputIsTooLong
    
    
    case emptyDecodeInput
    
    
    case wrongDecodingType
    
    
    case singleByteDecoding
    
    
    case leadindZeroInDecoding
    
    
    case longLengthDecoding
    
    
    case mustBeEncodedAsOneByte
    
    
    case decodingUndefined
    
    
}


