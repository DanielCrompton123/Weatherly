//
//  WikiImage.swift
//  Weatherly
//
//  Created by Daniel Crompton on 09/07/2024.
//

import Foundation

struct WikiImage: Decodable {
    let source: String

    enum CodingKeys: String, CodingKey {
        case query, pages, thumbnail, source
    }
    
    init(source: String) {
        self.source = source
    }
    
    init(from decoder: any Decoder) throws {
        let cnt = try decoder.container(keyedBy: CodingKeys.self)
        let queryCnt = try cnt.nestedContainer(keyedBy: CodingKeys.self, forKey: .query)
        let pagesCnt = try queryCnt.decode([String:Thumbnail].self, forKey: .pages)
        let pageId = pagesCnt.keys.first!
        source = pagesCnt.values.first!.source
    }
    
    private struct Thumbnail: Decodable {
        let source: String
        
        init(source: String) {
            self.source = source
        }
        
        private enum CodingKeys: CodingKey {
            case source, thumbnail
        }
        
        init(from decoder: any Decoder) throws {
            let cnt = try decoder.container(keyedBy: CodingKeys.self)
            let thumbnailCnt = try cnt.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnail)
            source = try thumbnailCnt.decode(String.self, forKey: .source)
        }
    }
    
}
