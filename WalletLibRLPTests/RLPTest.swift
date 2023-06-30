//
//  RLPTest.swift
//  WalletLibRLPTests
//
//

import XCTest
@testable import WalletLibRLP


extension Data {
    
    init(hex: String) {
        
        let string = hex.hasPrefix("0x") ? String(hex.dropFirst(2)) : hex
        
        var data = Data(capacity: (string.count / 2) + (string.count % 2))
        
        var values: [String] = []
        
        for i in stride(from: 0, to: string.count, by: 2) {
            
            let str: String = String(string.dropLast(i).suffix(2))
            values.append(str)
            
        }
        
        for hexByte in values.reversed() {
            
            guard var byte = UInt8(hexByte, radix: 16) else {
                
                self = Data()
                
                return
            }
            
            data.append(&byte, count: 1)
        }
        
        self = data
    }
    
}




final class RLPTest: XCTestCase {
    
    
    func testDecode() {
    
        let data = Data(hex: "f8aa81aa84acda7d008303d09094d26114cd6ee289accf82350c8d8487fedb8a0c0780b844a9059cbb00000000000000000000000039cf65754e55c69e5729b4ea57df526fa8ea684f00000000000000000000000000000000000000000000000000005af3107a400026a07183019145b13ec378d735b223293053232a7e89499625d6779583071d1e775aa07fdb8390cb9cf3cd43b55a4272784241b1d967a43e62102065c98f4f9e97f633")
        
        do {
            
            let _: Any = try RLP.decode(data)
            
        } catch {
            
            XCTAssert(false, "\(error)")
            
        }
        
    }
    
    
    func testString() {
    
        let data = RLPTestVector.string
        
        for item in data {
            
            let input = item.0.data(using: .utf8)
            let output = item.1
            let rlp = try! RLP.encode(input)
            
            XCTAssertEqual(rlp, Data(hex: output))
            
            let _: Data = try! RLP.decode(rlp)
            
        }
        
    }
    

    func testList() {
    
        let data = RLPTestVector.list
        
        for item in data {
            
            let input = item.0
            let output = item.1
            let rlp = try! RLP.encode(input)
            
            XCTAssertEqual(rlp, Data(hex: output))
            
            let _: [Any] = try! RLP.decode(rlp)
            
        }
        
    }

    
}
