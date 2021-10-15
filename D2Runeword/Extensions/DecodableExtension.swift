//
//  DecodableExtension.swift
//  D2Runeword
//
//  Created by Artem Kayumov on 15.10.2021.
//

import Foundation
    
extension Decodable {
    
    static func parse(jsonFile: String) -> Self? {
      guard let url = Bundle.main.url(forResource: jsonFile, withExtension: "json"),
            let data = try? Data(contentsOf: url),
            let output = try? JSONDecoder().decode(self, from: data)
          else {
        return nil
      }
      return output
    }
}

