//
//  CodbaleBundleExtension.swift
//  Touchdown
//
//  Created by Vladimir Sukanica on 10.2.21..
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        //1.Locate the json
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        //2.Create property
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to create data from \(file)")
        }
        //3.Create decoder
        let decoder = JSONDecoder()
        //4.Create property for decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode data from \(file)")
        }
        //5.Return done data
        return decodedData
    }
}
