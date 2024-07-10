import Foundation

let sample = """
{
    "batchcomplete": "",
    "query": {
        "normalized": [
            {
                "from": "blackpool",
                "to": "Blackpool"
            }
        ],
        "pages": {
            "232894": {
                "pageid": 232894,
                "ns": 0,
                "title": "Blackpool",
                "thumbnail": {
                    "source": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Blackpool_tower_and_illuminations.jpg/500px-Blackpool_tower_and_illuminations.jpg",
                    "width": 500,
                    "height": 382
                },
                "pageimage": "Blackpool_tower_and_illuminations.jpg"
            }
        }
    }
}
"""







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


let d = JSONDecoder()

print(try! d.decode(WikiImage.self, from: sample.data(using: .utf8)!))
